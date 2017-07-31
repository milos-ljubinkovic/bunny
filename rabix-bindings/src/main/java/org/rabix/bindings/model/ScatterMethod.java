package org.rabix.bindings.model;

public enum ScatterMethod {
  dotproduct,
  crossproduct;
  
  public static boolean isBlocking(ScatterMethod scatterMethod) {
    switch (scatterMethod) {
    case dotproduct:
      return false;
    default:
      return true;
    }
  }
}
