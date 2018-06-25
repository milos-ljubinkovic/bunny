package org.rabix.executor.execution.command;

import java.util.UUID;

import javax.inject.Inject;

import org.rabix.backend.api.callback.WorkerStatusCallback;
import org.rabix.bindings.model.Job;
import org.rabix.executor.ExecutorException;
import org.rabix.executor.execution.JobHandlerCommand;
import org.rabix.executor.handler.JobHandler;
import org.rabix.executor.model.JobData;
import org.rabix.executor.model.JobData.JobDataStatus;
import org.rabix.executor.service.JobDataService;

/**
 * Command that starts {@link JobHandler}
 */
public class StartCommand extends JobHandlerCommand {

  @Inject
  public StartCommand(JobDataService jobDataService, WorkerStatusCallback statusCallback) {
    super(jobDataService, statusCallback);
  }

  @Override
  public Result run(JobData data, JobHandler handler, UUID rootId) {
    Job job = data.getJob();
    try {
      data = jobDataService.save(data, "Job " + job.getId() + " started successfully.", JobDataStatus.STARTED);
      started(data, "Job " + job.getId() + " started successfully.", handler.getEngineStub());
      handler.start();
    } catch (ExecutorException e) {
      logger.error(e.getMessage(), e.getCause());
      data = jobDataService.save(data, e.getMessage(), JobDataStatus.FAILED);
      failed(data, e.getMessage(), handler.getEngineStub(), e);
      return new Result(true);
    }
    return new Result(false);
  }

  @Override
  public JobHandlerCommandType getType() {
    return JobHandlerCommandType.START;
  }

}
