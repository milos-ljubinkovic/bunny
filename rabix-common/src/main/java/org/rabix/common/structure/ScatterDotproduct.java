package org.rabix.common.structure;

import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.IntStream;

import org.rabix.common.helper.ExceptionHelper;

public class ScatterDotproduct {

  private Table<Object> table;
  
  public ScatterDotproduct(List<String> ports) {
    table = new Table<Object>(ports);
  }
  
  public List<List<Integer>> dotproduct() throws TableException {
    try {
      List<List<Integer>> result = new LinkedList<>();
      IntStream.range(0, table.getRows().size()).forEach(index -> {
        boolean exists;
        exists = IntStream.range(0, table.getColumns().size()).boxed().map(c -> ExceptionHelper.uncheckCall(() -> table.getInsertions().get(index, table.getColumns().get(c), false))).allMatch(c -> c);
        if (exists) {
          result.add(Collections.nCopies(table.getColumns().size(), index));
        }
      });
      return result;
    } catch (Exception e) {
      throw new TableException(e);
    }
  }
  
  public void enable(int row, String column, Object value) throws TableException {
    table.set(row, column, value);
  }
  
}
