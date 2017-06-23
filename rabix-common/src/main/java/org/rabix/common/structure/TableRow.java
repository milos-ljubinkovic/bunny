package org.rabix.common.structure;

import java.util.ArrayList;
import java.util.List;

public class TableRow<T> {

  private int index;
  private T defaultEmpty;
  private List<T> columns;

  TableRow(int size, int index, T defaultEmpty) {
    this.index = index;
    this.defaultEmpty = defaultEmpty;
    this.columns = new ArrayList<>(size);
  }

  /**
   * Puts value to position 
   */
  void put(int position, T value) {
    if (columns.size() < position + 1) {
      TableHelper.expand(this.columns, position + 1, defaultEmpty);
    }
    this.columns.set(position, value);
  }

  /**
   * Gets value for a given position. Defaults to defaultValue 
   */
  T get(int position, T defaultValue) {
    if (columns.size() < position + 1) {
      return defaultValue;
    }
    return columns.get(position);
  }

  /**
   * Size of a row 
   */
  int size() {
    return columns.size();
  }
  
  public int getIndex() {
    return index;
  }
  
}
