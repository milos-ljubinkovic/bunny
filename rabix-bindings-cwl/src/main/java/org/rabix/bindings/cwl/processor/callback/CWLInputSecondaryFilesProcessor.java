package org.rabix.bindings.cwl.processor.callback;

import java.net.URI;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.rabix.bindings.cwl.CWLProcessor;
import org.rabix.bindings.cwl.bean.CWLInputPort;
import org.rabix.bindings.cwl.bean.CWLJob;
import org.rabix.bindings.cwl.helper.CWLFileValueHelper;
import org.rabix.bindings.cwl.helper.CWLSchemaHelper;
import org.rabix.bindings.cwl.processor.CWLPortProcessorCallback;
import org.rabix.bindings.cwl.processor.CWLPortProcessorResult;
import org.rabix.bindings.model.ApplicationPort;
import org.rabix.bindings.model.FileValue;
import org.rabix.common.helper.ChecksumHelper.HashAlgorithm;
import org.rabix.common.helper.CloneHelper;

public class CWLInputSecondaryFilesProcessor implements CWLPortProcessorCallback {

  private CWLJob job;
  private Path workingDir;
  private HashAlgorithm hashAlgorithm;

  public CWLInputSecondaryFilesProcessor(CWLJob job, HashAlgorithm hashAlgorithm, Path workingDir) {
    this.job = job;
    this.workingDir = workingDir;
    this.hashAlgorithm = hashAlgorithm;
  }
  
  private boolean isFile(Object value){
    return CWLSchemaHelper.isFileFromValue(value) || CWLSchemaHelper.isDirectoryFromValue(value) || FileValue.isFileValue(value) ;
  }
  
  @Override
  @SuppressWarnings("unchecked")
  public CWLPortProcessorResult process(Object value, String id, Object schema, Object binding, ApplicationPort parentPort) throws Exception {
    if (isFile(value) && parentPort instanceof CWLInputPort) {
      if (!CollectionUtils.isEmpty(CWLFileValueHelper.getSecondaryFiles(value))) {
        return new CWLPortProcessorResult(value, false); 
      }
      
      Object secondaryFiles = CWLFileValueHelper.getSecondaryFiles(binding);
      if(secondaryFiles == null)
        secondaryFiles = ((CWLInputPort) parentPort).getSecondaryFiles();
      if (secondaryFiles == null) {
        return new CWLPortProcessorResult(value, false);
      }

      Map<String, Object> clonedValue = (Map<String, Object>) CloneHelper.deepCopy(value);
      
      Path filePath = Paths.get(CWLFileValueHelper.getPath(clonedValue));
      if (!Files.exists(filePath)) {
        filePath = Paths.get(URI.create(CWLFileValueHelper.getLocation(clonedValue)));
      }
      
      List<Map<String, Object>> outs = CWLProcessor.getSecondaryFiles(job, hashAlgorithm, clonedValue,  filePath, secondaryFiles, workingDir, false);
      if (secondaryFiles != null) {
        CWLFileValueHelper.setSecondaryFiles(outs, clonedValue);
        return new CWLPortProcessorResult(clonedValue, true);
      }
    }
    return new CWLPortProcessorResult(value, false);
  }
}