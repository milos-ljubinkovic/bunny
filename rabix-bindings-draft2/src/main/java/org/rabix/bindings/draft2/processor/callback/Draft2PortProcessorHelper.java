package org.rabix.bindings.draft2.processor.callback;

import java.io.File;
import java.nio.file.Paths;
import java.util.Map;
import java.util.Set;

import org.rabix.bindings.draft2.bean.Draft2Job;
import org.rabix.bindings.draft2.processor.Draft2PortProcessor;
import org.rabix.bindings.draft2.processor.Draft2PortProcessorException;
import org.rabix.bindings.mapper.FilePathMapper;
import org.rabix.bindings.model.FileValue;
import org.rabix.bindings.transformer.FileTransformer;

public class Draft2PortProcessorHelper {

  private final Draft2Job draft2Job;
  private final Draft2PortProcessor portProcessor;

  public Draft2PortProcessorHelper(Draft2Job draft2Job) {
    this.draft2Job = draft2Job;
    this.portProcessor = new Draft2PortProcessor(draft2Job);
  }

  public Set<FileValue> getInputFiles(Map<String, Object> inputs, FilePathMapper fileMapper, Map<String, Object> config) throws Draft2PortProcessorException {
    if (fileMapper != null) {
      Draft2FilePathMapProcessorCallback fileMapperCallback = new Draft2FilePathMapProcessorCallback(fileMapper, config);
      inputs = portProcessor.processInputs(inputs, fileMapperCallback);
    }
    
    Draft2FileValueProcessorCallback callback = new Draft2FileValueProcessorCallback(draft2Job, null, true);
    try {
      portProcessor.processInputs(inputs, callback);
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to get input files.", e);
    }
    return callback.getFileValues();
  }
  
  public Set<FileValue> getOutputFiles(Map<String, Object> outputs, Set<String> visiblePorts) throws Draft2PortProcessorException {
    Draft2FileValueProcessorCallback callback = new Draft2FileValueProcessorCallback(draft2Job, visiblePorts, false);
    try {
      portProcessor.processOutputs(outputs, callback);
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to get output files.", e);
    }
    return callback.getFileValues();
  }
  
  public Map<String, Object> setFileSize(Map<String, Object> inputs) throws Draft2PortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new Draft2FileSizeProcessorCallback());
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to set input file size", e);
    }
  }
  
  public Map<String, Object> updateInputFiles(Map<String, Object> inputs, FileTransformer fileTransformer) throws Draft2PortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new Draft2FileValueUpdateProcessorCallback(fileTransformer));
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to set input file size", e);
    }
  }
  
  public Map<String, Object> updateOutputFiles(Map<String, Object> outputs, FileTransformer fileTransformer) throws Draft2PortProcessorException {
    try {
      return portProcessor.processOutputs(outputs, new Draft2FileValueUpdateProcessorCallback(fileTransformer));
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to set input file size", e);
    }
  }
  
  public Map<String, Object> fixOutputMetadata(Map<String, Object> inputs, Map<String, Object> outputs) throws Draft2PortProcessorException {
    try {
      Draft2MetadataCallback callback = new Draft2MetadataCallback(inputs);
      Map<String, Object> fixedOutputs = portProcessor.processOutputs(outputs, callback);
      fixedOutputs = portProcessor.processOutputs(fixedOutputs, callback); // call twice on purpose
      return fixedOutputs;
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to fix metadata", e);
    }
  }

  public Map<String, Object> loadInputContents(Map<String, Object> inputs) throws Draft2PortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new Draft2LoadContentsPortProcessorCallback());
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to load input contents.", e);
    }
  }

  public Map<String, Object> stageInputFiles(Map<String, Object> inputs, File workingDir)
      throws Draft2PortProcessorException {
    try {
      return portProcessor.processInputs(inputs, new Draft2StageInputProcessorCallback(workingDir));
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to stage inputs.", e);
    }
  }
  
  public Map<String, Object> setFileProperties(Map<String, Object> inputs) throws Draft2PortProcessorException {
    try {
      String appFileLocation = draft2Job.getApp().getAppFileLocation();
      return portProcessor.processInputs(inputs, new Draft2FilePropertiesProcessorCallback(Paths.get(appFileLocation == null ? "." : appFileLocation).toAbsolutePath().normalize()));
    } catch (Draft2PortProcessorException e) {
      throw new Draft2PortProcessorException("Failed to set input properties.", e);
    }
  }
  
}
