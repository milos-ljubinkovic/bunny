package org.rabix.engine.store.model.scatter.impl.table;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class ScatterTable<T> {

  public final T DEFAULT_EMPTY_VALUE = null;
  
  @JsonProperty("rows")
  private List<ScatterTableRow<T>> rows;
  @JsonProperty("columns")
  private List<String> columns;
  @JsonProperty("insertions")
  private ScatterTable<Boolean> insertions;
  @JsonProperty("defaultEmpty")
  private T defaultEmpty;

  /**
   * Private constructor
   */
  @SuppressWarnings("unused")
  private ScatterTable() {
  }
  
  public ScatterTable(List<String> columns) {
    this.columns = columns;
    this.rows = new ArrayList<>();
    this.defaultEmpty = DEFAULT_EMPTY_VALUE;
    this.insertions = new ScatterTable<Boolean>(columns, false, false);
  }

  /**
   * Private constructor
   */
  private ScatterTable(List<String> columns, T defaultEmpty, boolean keepInsertions) {
    this.columns = columns;
    this.rows = new ArrayList<>();
    this.defaultEmpty = defaultEmpty;
    
    if (keepInsertions) {
      this.insertions = new ScatterTable<Boolean>(columns, false, false);
    }
  }
  
  /**
   * Set value for given row and column 
   */
  public void set(int row, String column, T value) throws ScatterTableException {
    validate(row, column);

    if (rows.size() < row + 1) {
      ScatterTableHelper.expand(rows, row + 1, DEFAULT_EMPTY_VALUE);
    }

    ScatterTableRow<T> tableRow = rows.get(row);
    if (tableRow == null) {
      tableRow = new ScatterTableRow<T>(this.columns.size(), row, defaultEmpty);
    }
    tableRow.put(columnToPosition(this, column), value);
    rows.set(row, tableRow);
    if (insertions != null) {
      insertions.set(row, column, true);
    }
  }

  /**
   * Does insertion exist
   */
  public boolean exists(int row, String column) throws ScatterTableException {
    validate(row, column);

    if (insertions.rows.size() <= row) {
      return false;
    }
    ScatterTableRow<Boolean> tableRow = insertions.rows.get(row);
    return tableRow == null ? false : tableRow.get(columnToPosition(this, column), false);
  }
  
  /**
   * Validate row and column 
   */
  private void validate(int row, String column) throws ScatterTableException {
    if (row < 0) {
      throw new ScatterTableException("Row number is lesser than zero. Row " + row);
    }
    if (!columns.contains(column)) {
      throw new ScatterTableException("Column " + column + " doesn't exist");
    }
  }

  /**
   * Get value for given row and column 
   */
  public T get(int row, String column) throws ScatterTableException {
    return get(row, column, DEFAULT_EMPTY_VALUE);
  }

  /**
   * Get value for given row and column. Defaults to defaultValue
   */
  public T get(int row, String column, T defaultValue) throws ScatterTableException {
    validate(row, column);
    ScatterTableRow<T> tableRow = rows.get(row);
    if (tableRow == null) {
      return defaultValue;
    }
    if (tableRow.size() <= columnToPosition(this, column)) {
      return defaultValue;
    }
    return tableRow.get(columnToPosition(this, column), defaultValue);
  }

  /**
   * Convert column header to column position
   */
  public static int columnToPosition(ScatterTable<?> table, String column) {
    return table.getColumns().indexOf(column);
  }
  
  public List<ScatterTableRow<T>> getRows() {
    return Collections.unmodifiableList(rows);
  }
  
  public List<String> getColumns() {
    return Collections.unmodifiableList(columns);
  }
  
  public ScatterTable<Boolean> getInsertions() {
    return insertions;
  }
  
  public T getDefaultEmpty() {
    return defaultEmpty;
  }

}
