package org.rabix.engine.service;

import java.util.List;
import java.util.UUID;

import org.rabix.bindings.model.dag.DAGLinkPort;
import org.rabix.bindings.model.dag.DAGLinkPort.LinkPortType;
import org.rabix.engine.model.JobRecord;

public interface JobRecordService {

  public static UUID generateUniqueId() {
    return UUID.randomUUID();
  }
  
  void create(JobRecord jobRecord);

  void delete(UUID rootId);
  
  void update(JobRecord jobRecord);
  
  List<JobRecord> findReady(UUID rootId);

  List<JobRecord> findByParent(UUID parentId, UUID rootId);
  
  JobRecord find(String id, UUID rootId);
  
  JobRecord findRoot(UUID rootId);
  
  void increaseInputPortIncoming(JobRecord jobRecord, String port);
  
  void increaseOutputPortIncoming(JobRecord jobRecord, String port);
  
  void incrementPortCounter(JobRecord jobRecord, DAGLinkPort port, LinkPortType type);
  
  void decrementPortCounter(JobRecord jobRecord, String portId, LinkPortType type);
  
  void resetInputPortCounters(JobRecord jobRecord, int value);
  
  void resetOutputPortCounter(JobRecord jobRecord, int value, String port);
  
  void resetOutputPortCounters(JobRecord jobRecord, int value);
  
}
