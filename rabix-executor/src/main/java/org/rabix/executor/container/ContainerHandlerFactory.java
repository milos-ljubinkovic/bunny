package org.rabix.executor.container;

import javax.inject.Inject;

import org.apache.commons.configuration.Configuration;
import org.rabix.backend.api.callback.WorkerStatusCallback;
import org.rabix.bindings.model.Job;
import org.rabix.bindings.model.requirement.DockerContainerRequirement;
import org.rabix.bindings.model.requirement.LocalContainerRequirement;
import org.rabix.bindings.model.requirement.Requirement;
import org.rabix.executor.config.DockerConfigation;
import org.rabix.executor.config.StorageConfiguration;
import org.rabix.executor.container.impl.CompletedContainerHandler;
import org.rabix.executor.container.impl.DockerContainerHandler;
import org.rabix.executor.container.impl.DockerContainerHandler.DockerClientLockDecorator;
import org.rabix.executor.container.impl.LocalContainerHandler;
import org.rabix.executor.container.impl.UserDockerContainerHandler;

public class ContainerHandlerFactory {
  @Inject
  private Configuration configuration;
  @Inject
  private DockerClientLockDecorator dockerClient;
  @Inject
  private WorkerStatusCallback statusCallback;
  @Inject
  private StorageConfiguration storageConfig;
  @Inject
  private DockerConfigation dockerConfig;

  public ContainerHandler create(Job job, Requirement requirement) throws ContainerException {
    if (requirement instanceof DockerContainerRequirement) {
      if (configuration.containsKey(UserDockerContainerHandler.EXECUTOR_OVERRIDE_COMMAND)) {
        return new UserDockerContainerHandler(job, configuration, (DockerContainerRequirement) requirement, storageConfig, dockerConfig, statusCallback);
      }
      return new DockerContainerHandler(job, configuration, (DockerContainerRequirement) requirement, storageConfig, dockerConfig, statusCallback,
          dockerClient);
    }
    if (requirement instanceof LocalContainerRequirement) {
      return new LocalContainerHandler(job, storageConfig);
    }
    return new CompletedContainerHandler(job);
  }

}
