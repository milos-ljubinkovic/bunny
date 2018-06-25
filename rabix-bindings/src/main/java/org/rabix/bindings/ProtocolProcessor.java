package org.rabix.bindings;

import java.io.File;
import java.nio.file.Path;

import org.rabix.bindings.mapper.FilePathMapper;
import org.rabix.bindings.model.Job;
import org.rabix.common.helper.ChecksumHelper.HashAlgorithm;

public interface ProtocolProcessor {

  Job preprocess(Job job, File workingDir, FilePathMapper logFilesPathMapper) throws BindingException;
  
  default Job preprocess(Job job, Path workingDir, FilePathMapper filesPathMapper) throws BindingException {
    return preprocess(job, workingDir.toFile(), filesPathMapper);
  };

  Job postprocess(Job job, File workingDir, HashAlgorithm hashAlgorithm, FilePathMapper logFilePathMapper) throws BindingException;
  
  default Job postprocess(Job job, Path workingDir, HashAlgorithm hashAlgorithm, FilePathMapper logFilePathMapper) throws BindingException {
    return postprocess(job, workingDir.toFile(), hashAlgorithm, logFilePathMapper);
  };

  Object transformInputs(Object value, Job job, Object transform) throws BindingException;

  boolean isSuccessful(Job job, int statusCode) throws BindingException;


}
