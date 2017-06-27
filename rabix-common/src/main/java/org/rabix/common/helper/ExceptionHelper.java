package org.rabix.common.helper;

import java.util.concurrent.Callable;

public class ExceptionHelper {

  public static <T> T uncheckCall(Callable<T> callable) {
    try {
      return callable.call();
    } catch (Exception e) {
      return sneakyThrow(e);
    }
  }

  public static void uncheckRun(RunnableExc r) {
    try {
      r.run();
    } catch (Exception e) {
      sneakyThrow(e);
    }
  }

  @FunctionalInterface
  public interface RunnableExc {
    void run() throws Exception;
  }

  public static <T> T sneakyThrow(Throwable e) {
    return ExceptionHelper.<RuntimeException, T> sneakyThrow0(e);
  }

  @SuppressWarnings("unchecked")
  private static <E extends Throwable, T> T sneakyThrow0(Throwable t) throws E {
    throw (E) t;
  }

}
