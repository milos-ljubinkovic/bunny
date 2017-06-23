package org.rabix.common.structure;

import java.util.Arrays;

public class TableTest {

  public static void main(String[] args) throws TableException {
    ScatterDotproduct dotproduct = new ScatterDotproduct(Arrays.asList("one", "two"));
    ScatterCartesian cartesian = new ScatterCartesian(Arrays.asList("one", "two"));
    
    dotproduct.enable(1, "two", 2);
    dotproduct.enable(11, "two", 5);
    dotproduct.enable(0, "two", 1);
    dotproduct.enable(5, "two", 51);
    dotproduct.enable(5, "one", 5);
    dotproduct.enable(10, "two", 7);
    dotproduct.enable(11, "one", 14);
    
    cartesian.enable(1, "two", 2);
    cartesian.enable(11, "two", 5);
    cartesian.enable(0, "two", 1);
    cartesian.enable(5, "two", 51);
    cartesian.enable(5, "one", 5);
    cartesian.enable(10, "two", 7);
    cartesian.enable(11, "one", 14);

    System.out.println("dotproduct");
    System.out.println(dotproduct.dotproduct());
    System.out.println("cartesian");
    System.out.println(cartesian.cartesian());
  }
  
}
