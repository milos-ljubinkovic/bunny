package org.rabix.engine.store.model.scatter.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.UUID;
import java.util.stream.Collectors;

import org.rabix.bindings.model.ScatterMethod;
import org.rabix.bindings.model.dag.DAGNode;
import org.rabix.common.helper.InternalSchemaHelper;
import org.rabix.engine.store.model.scatter.PortMapping;
import org.rabix.engine.store.model.scatter.RowMapping;
import org.rabix.engine.store.model.scatter.ScatterStrategy;
import org.rabix.engine.store.model.scatter.ScatterStrategyException;
import org.rabix.engine.store.model.scatter.impl.table.ScatterTable;
import org.rabix.engine.store.model.scatter.impl.table.ScatterTableException;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class ScatterCartesian extends ScatterStrategy {

  @JsonProperty("sizePerPort")
  private Map<String, Integer> sizePerPort;
  @JsonProperty("combinations")
  private List<Combination> combinations;
  
  public ScatterCartesian(List<String> ports) {
    super(ports);
    this.sizePerPort = new HashMap<>();
    this.combinations = new LinkedList<>();
  }
  
  public ScatterCartesian(DAGNode dagNode) {
    this(dagNode.getInputPorts().stream().filter(ip -> ip.isScatter()).map(ip -> ip.getId()).collect(Collectors.toList()));
    this.scatterMethod = dagNode.getScatterMethod();
    this.emptyListDetected = false;
    this.skipScatter = false;
  }
  
  @Override
  public void enable(String port, Object value, Integer position, Integer sizePerPort) throws ScatterStrategyException {
    super.enable(port, value, position, sizePerPort);
    this.sizePerPort.put(port, sizePerPort);
  }
  
  @Override
  public void commit(List<RowMapping> mappings) {
    // TODO Auto-generated method stub
  }

  @Override
  public int enabledCount() {
    int size = 1;
    for (Entry<String, Integer> sizePerPort : this.sizePerPort.entrySet()) {
      size = size * sizePerPort.getValue();
    }
    return size;
  }

  @Override
  public List<RowMapping> enabled() throws ScatterStrategyException {
    Map<String, LinkedList<Integer>> columnLists = new HashMap<>();
    table.getColumns().stream().forEach(k -> columnLists.put(k, new LinkedList<>()));

    table.getInsertions().getRows().stream().forEach(r -> {
      table.getInsertions().getColumns().stream().forEach(c -> {
        if (r != table.getDefaultEmpty() && r.get(ScatterTable.columnToPosition(table, c), false)) {
          columnLists.get(c).addLast(r.getIndex());
        }
      });
    });
    List<List<Integer>> lists = new LinkedList<>();
    columnLists.values().stream().forEach(v -> ((LinkedList<List<Integer>>) lists).addLast(v));
    List<List<Integer>> cartesian = cartesianProduct(lists);
    
    List<RowMapping> result = new ArrayList<>();
    for (List<Integer> indexes : cartesian) {
      if (!hasNull(indexes)) {
        Combination combination = getCombination(indexes);
        if (combination == null) {
          combination = new Combination(combinations.size() + 1, false, indexes);
          combinations.add(combination);
        }
        if (!combination.enabled) {
          List<PortMapping> portMappings = new LinkedList<>();

          int position = 0;
          for (Integer index : indexes) {
            try {
              String port = table.getColumns().get(position);
              Object value = table.get(index, port);
              portMappings.add(new PortMapping(port, value));
              position++;
            } catch (ScatterTableException e) {
              throw new ScatterStrategyException(e);
            }
          }
          result.add(new RowMapping(combination.position, portMappings));
        }
      }
    }
    return result;
  }
  
  private boolean hasNull(List<Integer> list) {
    for (Integer value : list) {
      if (value == null) {
        return true;
      }
    }
    return false;
  }
  
  private Combination getCombination(List<Integer> indexes) {
    for (Combination combination : combinations) {
      if (combination.indexes.toString().equals(indexes.toString())) {
        return combination;
      }
    }
    return null;
  }
  
  private List<List<Integer>> cartesianProduct(List<List<Integer>> lists) throws ScatterStrategyException {
    if (lists.size() < 2) {
      throw new ScatterStrategyException("Can't have a product of fewer than two lists (got " + lists.size() + ")");
    }
    return cartesianProduct(0, lists);
  }

  private List<List<Integer>> cartesianProduct(int index, List<List<Integer>> lists) {
    LinkedList<List<Integer>> result = new LinkedList<>();
    if (index == lists.size()) {
      result.add(new LinkedList<Integer>());
    } else {
      for (Integer obj : lists.get(index)) {
        for (List<Integer> list : cartesianProduct(index + 1, lists)) {
          ((LinkedList<Integer>) list).addFirst(obj);
          result.add((LinkedList<Integer>) list);
        }
      }
    }
    return result;
  }

  @Override
  public List<Object> valueStructure(String jobId, String portId, UUID rootId) {
    Collections.sort(combinations, new Comparator<Combination>() {
      @Override
      public int compare(Combination o1, Combination o2) {
        return o1.indexes.toString().compareTo(o2.indexes.toString());
      }
    });

    if (scatterMethod.equals(ScatterMethod.flat_crossproduct)) {
      LinkedList<Object> result = new LinkedList<>();
      for (Combination combination : combinations) {
        String scatteredJobId = InternalSchemaHelper.scatterId(jobId, combination.position);
        result.addLast(new JobPortPair(scatteredJobId, portId));
      }
      return result;
    }
    return null;
  }

  @Override
  public Object generateOutputsForEmptyList() {
    if (scatterMethod.equals(ScatterMethod.flat_crossproduct)) {
      return new ArrayList<>();  
    }
    return new ArrayList<>(); // TODO implement outputs for nested_crossproduct
  }
  
  public static class Combination {
    @JsonProperty("position")
    int position;
    @JsonProperty("enabled")
    boolean enabled;
    @JsonProperty("indexes")
    List<Integer> indexes;

    @JsonCreator
    public Combination(@JsonProperty("position") int position, @JsonProperty("enabled") boolean enabled,
        @JsonProperty("indexes") List<Integer> indexes) {
      this.position = position;
      this.enabled = enabled;
      this.indexes = indexes;
    }

    @Override
    public String toString() {
      return "Combination [position=" + position + ", enabled=" + enabled + ", indexes=" + indexes + "]";
    }
    
  }
  
}
