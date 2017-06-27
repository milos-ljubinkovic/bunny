package org.rabix.engine.store.model.scatter.impl.table;

public class ScatterTableException extends Exception {

  /**
   * 
   */
  private static final long serialVersionUID = 6953064060466258591L;

  public ScatterTableException(String msg) {
    super(msg);
  }

  public ScatterTableException(Exception e) {
    super(e);
  }

}
