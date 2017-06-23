package org.rabix.common.structure;

public class TableException extends Exception {

  /**
   * 
   */
  private static final long serialVersionUID = 6953064060466258591L;

  public TableException(String msg) {
    super(msg);
  }

  public TableException(Exception e) {
    super(e);
  }

}
