package org.rabix.engine.store.model.scatter;

import java.util.List;
import java.util.UUID;

import org.apache.commons.collections.CollectionUtils;
import org.rabix.bindings.model.ScatterMethod;
import org.rabix.engine.store.model.scatter.impl.table.ScatterTable;
import org.rabix.engine.store.model.scatter.impl.table.ScatterTableException;
import org.rabix.engine.store.model.scatter.impl.table.ScatterTableRow;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonTypeInfo;

@JsonTypeInfo(use = JsonTypeInfo.Id.CLASS, include = JsonTypeInfo.As.PROPERTY, property = "@class")
@JsonInclude(Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public abstract class ScatterStrategy {

  @JsonProperty("skipScatter")
  protected Boolean skipScatter;
  @JsonProperty("scatterMethod")
  protected ScatterMethod scatterMethod;
  @JsonProperty("emptyListDetected")
  protected Boolean emptyListDetected;
  @JsonProperty("table")
  protected ScatterTable<Object> table;
  
  public ScatterStrategy(List<String> columns) {
    this.table = new ScatterTable<>(columns);
  }
  
  public void enable(String port, Object value, Integer position, Integer sizePerPort) throws ScatterStrategyException {
    try {
      table.set(position, port, value);
    } catch (ScatterTableException e) {
      throw new ScatterStrategyException(e);
    }
  }
  
  public boolean isBlocking() {
    return ScatterMethod.isBlocking(scatterMethod);
  }
  
  public boolean isHanging() {
    if (table.getRows().isEmpty()) {
      return true;
    }
    for (ScatterTableRow<?> row : table.getRows()) {
      if (row == table.getDefaultEmpty() || CollectionUtils.isEmpty(row.getColumns())) {
        return true;
      }
    }
    return false;
  }
  
  public void setEmptyListDetected() {
    this.emptyListDetected = true;
  }
  
  public boolean isEmptyListDetected() {
    return emptyListDetected;
  }

  public boolean skipScatter() {
    return skipScatter;
  }

  public void skipScatter(boolean skip) {
    this.skipScatter = skip;
  }
  
  public abstract void commit(List<RowMapping> mappings);
  
  public abstract int enabledCount();
  
  public abstract List<RowMapping> enabled() throws ScatterStrategyException;
  
  public abstract List<Object> valueStructure(String jobId, String portId, UUID rootId);
  
  public abstract Object generateOutputsForEmptyList();
  
  public class JobPortPair {
    private String jobId;
    private String portId;

    public JobPortPair(String jobId, String portId) {
      this.jobId = jobId;
      this.portId = portId;
    }
    
    public String getJobId() {
      return jobId;
    }
    
    public String getPortId() {
      return portId;
    }

    @Override
    public String toString() {
      return "JobPortPair [jobId=" + jobId + ", portId=" + portId + "]";
    }
  }

}
