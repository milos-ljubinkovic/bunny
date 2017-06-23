package org.rabix.engine.store.model.scatter.impl.table;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ScatterTableRow<T> {

  private int index;
  private T defaultEmpty;
  private List<T> columns;

  ScatterTableRow(int size, int index, T defaultEmpty) {
    this.index = index;
    this.defaultEmpty = defaultEmpty;
    this.columns = new ArrayList<>(size);
  }

  /**
   * Puts value to position 
   */
  void put(int position, T value) {
    if (columns.size() < position + 1) {
      ScatterTableHelper.expand(this.columns, position + 1, defaultEmpty);
    }
    this.columns.set(position, value);
  }

  /**
   * Gets value for a given position. Defaults to defaultValue 
   */
  public T get(int position, T defaultValue) {
    if (columns.size() < position + 1) {
      return defaultValue;
    }
    return columns.get(position);
  }

  /**
   * Size of a row 
   */
  public int size() {
    return columns.size();
  }
  
  public int getIndex() {
    return index;
  }
  
  public List<T> getColumns() {
    return Collections.unmodifiableList(columns);
  }
  
}
