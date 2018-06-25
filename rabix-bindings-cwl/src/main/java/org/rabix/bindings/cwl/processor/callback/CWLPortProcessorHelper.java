package org.rabix.bindings.cwl.processor.callback;

import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Set;

import org.rabix.bindings.cwl.bean.CWLJob;
import org.rabix.bindings.cwl.processor.CWLPortProcessor;
import org.rabix.bindings.cwl.processor.CWLPortProcessorException;
import org.rabix.bindings.mapper.FilePathMapper;
import org.rabix.bindings.model.FileValue;
import org.rabix.bindings.transformer.FileTransformer;
import org.rabix.common.helper.ChecksumHelper.HashAlgorithm;

public class CWLPortProcessorHelper {

  private final CWLPortProcessor portProcessor;

  public CWLPortProcessorHelper(CWLJob cwlJob) {
    this.portProcessor = new CWLPortProcessor(cwlJob);
  }
  
  public Set<FileValue> getInputFiles(Map<String, Object> inputs, FilePathMapper fileMapper, Map<String, Object> config) throws CWLPortProcessorException {
    if (fileMapper != null) {
      CWLFilePathMapProcessorCallback fileMapperCallback = new CWLFilePathMapProcessorCallback(fileMapper, config);
      inputs = portProcessor.processInputs(inputs, fileMapperCallback);
    }
    
    CWLFileValueProcessorCallback callback = new CWLFileValueProcessorCallback(null);
    try {
      portProcessor.processInputs(inputs, callback);
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException("Failed to get input files.", e);
    }
    return callback.getFileValues();
  }
  
  public Set<FileValue> getOutputFiles(Map<String, Object> outputs, Set<String> visiblePorts) throws CWLPortProcessorException {
    CWLFileValueProcessorCallback callback = new CWLFileValueProcessorCallback(visiblePorts);
    try {
      portProcessor.processOutputs(outputs, callback);
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException("Failed to get output files.", e);
    }
    return callback.getFileValues();
  }

  public Map<String, Object> updateInputFiles(Map<String, Object> inputs, FileTransformer fileTransformer) throws CWLPortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new CWLFileValueUpdateProcessorCallback(fileTransformer));
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException("Failed to set input file size", e);
    }
  }
  
  public Map<String, Object> updateOutputFiles(Map<String, Object> outputs, FileTransformer fileTransformer) throws CWLPortProcessorException {
    try {
      return portProcessor.processOutputs(outputs, new CWLFileValueUpdateProcessorCallback(fileTransformer));
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException(e);
    }
  }
  
  public Map<String, Object> setFileProperties(Map<String, Object> inputs) throws CWLPortProcessorException {
    try {
      String appFileLocation = portProcessor.getJob().getApp().getAppFileLocation();
      return portProcessor.processInputs(inputs, new CWLFilePropertiesProcessorCallback(Paths.get(appFileLocation == null ? "." : appFileLocation).toAbsolutePath().normalize()));
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException(e);
    }
  }

  public Map<String, Object> createFileLiteralFiles(Map<String, Object> inputs, Path workingDir) throws CWLPortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new CWLFileLiteralProcessorCallback(workingDir));
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException(e);
    }
  }
  
  public Map<String, Object> loadInputContents(Map<String, Object> inputs) throws CWLPortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new CWLLoadContentsPortProcessorCallback());
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException(e);
    }
  }

  public Map<String, Object> stageInputFiles(Map<String, Object> inputs, Path workingDir)
      throws CWLPortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new CWLStageInputProcessorCallback(workingDir));
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException("Failed to stage inputs.", e);
    }
  }
  
  public Map<String, Object> setInputSecondaryFiles(Map<String, Object> inputs, Path workingDir, HashAlgorithm hashAlgorithm)
      throws CWLPortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new CWLInputSecondaryFilesProcessor(portProcessor.getJob(), hashAlgorithm, workingDir));
    } catch (CWLPortProcessorException e) {
      throw new CWLPortProcessorException("Failed to stage inputs.", e);
    }
  }

}
