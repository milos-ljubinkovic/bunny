package org.rabix.common.structure;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Table<T> {

  public final T DEFAULT_EMPTY_VALUE = null;
  
  @JsonProperty("rows")
  private List<TableRow<T>> rows;
  @JsonProperty("columns")
  private List<String> columns;
  @JsonProperty("insertions")
  private Table<Boolean> insertions;
  @JsonProperty("defaultEmpty")
  private T defaultEmpty;

  /**
   * Private constructor
   */
  @SuppressWarnings("unused")
  private Table() {
  }
  
  public Table(List<String> columns) {
    this.columns = columns;
    this.rows = new ArrayList<>();
    this.defaultEmpty = DEFAULT_EMPTY_VALUE;
    this.insertions = new Table<Boolean>(columns, false, false);
  }

  /**
   * Private constructor
   */
  private Table(List<String> columns, T defaultEmpty, boolean keepInsertions) {
    this.columns = columns;
    this.rows = new ArrayList<>();
    this.defaultEmpty = defaultEmpty;
    
    if (keepInsertions) {
      this.insertions = new Table<Boolean>(columns, false, false);
    }
  }
  
  /**
   * Set value for given row and column 
   */
  public void set(int row, String column, T value) throws TableException {
    validate(row, column);

    if (rows.size() < row + 1) {
      TableHelper.expand(rows, row + 1, DEFAULT_EMPTY_VALUE);
    }

    TableRow<T> tableRow = rows.get(row);
    if (tableRow == null) {
      tableRow = new TableRow<T>(this.columns.size(), row, defaultEmpty);
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
  public boolean exists(int row, String column) throws TableException {
    validate(row, column);

    if (insertions.rows.size() <= row) {
      return false;
    }
    TableRow<Boolean> tableRow = insertions.rows.get(row);
    return tableRow == null ? false : tableRow.get(columnToPosition(this, column), false);
  }
  
  /**
   * Validate row and column 
   */
  private void validate(int row, String column) throws TableException {
    if (row < 0) {
      throw new TableException("Row number is lesser than zero. Row " + row);
    }
    if (!columns.contains(column)) {
      throw new TableException("Column " + column + " doesn't exist");
    }
  }

  /**
   * Get value for given row and column 
   */
  public T get(int row, String column) throws TableException {
    return get(row, column, DEFAULT_EMPTY_VALUE);
  }

  /**
   * Get value for given row and column. Defaults to defaultValue
   */
  public T get(int row, String column, T defaultValue) throws TableException {
    validate(row, column);
    TableRow<T> tableRow = rows.get(row);
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
  public static int columnToPosition(Table<?> table, String column) {
    return table.getColumns().indexOf(column);
  }
  
  public List<TableRow<T>> getRows() {
    return Collections.unmodifiableList(rows);
  }
  
  public List<String> getColumns() {
    return Collections.unmodifiableList(columns);
  }
  
  public Table<Boolean> getInsertions() {
    return insertions;
  }
  
  public T getDefaultEmpty() {
    return defaultEmpty;
  }

}
