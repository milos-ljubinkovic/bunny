package org.rabix.engine.store.model.scatter.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import org.rabix.bindings.model.dag.DAGNode;
import org.rabix.common.helper.ExceptionHelper;
import org.rabix.common.helper.InternalSchemaHelper;
import org.rabix.engine.store.model.scatter.PortMapping;
import org.rabix.engine.store.model.scatter.RowMapping;
import org.rabix.engine.store.model.scatter.ScatterStrategy;
import org.rabix.engine.store.model.scatter.ScatterStrategyException;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ScatterDotproduct extends ScatterStrategy {

  @JsonProperty("combinations")
  private Map<Integer, Combination> combinations;
  
  public ScatterDotproduct(DAGNode dagNode) {
    this(dagNode.getInputPorts().stream().filter(ip -> ip.isScatter()).map(ip -> ip.getId()).collect(Collectors.toList()));
    this.scatterMethod = dagNode.getScatterMethod();
    this.emptyListDetected = false;
    this.skipScatter = false;
  }
  
  public ScatterDotproduct(List<String> ports) {
    super(ports);
    this.combinations = new HashMap<>();
  }
  
  @Override
  public List<RowMapping> enabled() throws ScatterStrategyException {
    try {
      List<RowMapping> result = new LinkedList<>();
      IntStream.range(0, table.getRows().size()).forEach(index -> {
        boolean exists;
        exists = IntStream.range(0, table.getColumns().size()).boxed().map(c -> ExceptionHelper.uncheckCall(() -> table.getInsertions().get(index, table.getColumns().get(c), false))).allMatch(c -> c);
        if (exists) {
          Combination combination = combinations.get(index);
          if (combination == null) {
            combination = new Combination(index, false); 
          }
          if (!combination.enabled) {
            result.add(new RowMapping(index, table.getColumns().stream().map(c -> new PortMapping(c, ExceptionHelper.uncheckCall(() -> table.get(index, c)))).collect(Collectors.toList())));
          }
        }
      });
      return result;
    } catch (Exception e) {
      throw new ScatterStrategyException(e);
    }
  }
  
  @Override
  public List<Object> valueStructure(String jobId, String portId, UUID rootId) {
    List<Combination> combinationList = combinations.values().stream().collect(Collectors.toList());
    Collections.sort(combinationList, new Comparator<Combination>() {
      @Override
      public int compare(Combination o1, Combination o2) {
        return o1.position - o2.position;
      }
    });

    LinkedList<Object> result = new LinkedList<>();
    for (Combination combination : combinationList) {
      String scatteredJobId = InternalSchemaHelper.scatterId(jobId, combination.position);
      result.addLast(new JobPortPair(scatteredJobId, portId));
    }
    return result;
  }
  
  @Override
  public void commit(List<RowMapping> mappings) {
    for (RowMapping mapping : mappings) {
      for (Combination combination : combinations.values()) {
        if (combination.position == mapping.getIndex()) {
          combination.enabled = true;
          break;
        }
      }
    }
  }

  @Override
  public int enabledCount() {
    return combinations.size();
  }

  @Override
  public Object generateOutputsForEmptyList() {
    return new ArrayList<>();
  }
  
  private class Combination {
    @JsonProperty("position")
    int position;
    @JsonProperty("enabled")
    boolean enabled;

    @JsonCreator
    public Combination(@JsonProperty("position") int position, @JsonProperty("enabled") boolean enabled) {
      this.position = position;
      this.enabled = enabled;
    }

    @Override
    public String toString() {
      return "Combination [position=" + position + ", enabled=" + enabled + "]";
    }
  }

}
