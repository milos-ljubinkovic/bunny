package org.rabix.common.structure;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class ScatterCartesian {

  private Table<Object> table;

  public ScatterCartesian(List<String> ports) {
    table = new Table<Object>(ports);
  }
  
  public void enable(int row, String column, Object value) throws TableException {
    table.set(row, column, value);
  }
  
  public List<List<Integer>> cartesian() throws TableException {
    Map<String, LinkedList<Integer>> columnLists = new HashMap<>();
    table.getColumns().stream().forEach(k -> columnLists.put(k, new LinkedList<>()));

    table.getInsertions().getRows().stream().forEach(r -> {
      table.getInsertions().getColumns().stream().forEach(c -> {
        if (r != table.getDefaultEmpty() && r.get(Table.columnToPosition(table, c), false)) {
          columnLists.get(c).addLast(r.getIndex());
        }
      });
    });
    List<List<Integer>> lists = new LinkedList<>();
    columnLists.values().stream().forEach(v -> ((LinkedList<List<Integer>>) lists).addLast(v));
    return cartesianProduct(lists);
  }

  private List<List<Integer>> cartesianProduct(List<List<Integer>> lists) throws TableException {
    if (lists.size() < 2) {
      throw new TableException("Can't have a product of fewer than two lists (got " + lists.size() + ")");
    }
    return cartesianProduct(0, lists);
  }

  private List<List<Integer>> cartesianProduct(int index, List<List<Integer>> lists) {
    LinkedList<List<Integer>> result = new LinkedList<>();
    if (index == lists.size()) {
      result.add(new LinkedList<Integer>());
    } else {
      for (Integer obj : lists.get(index)) {
        for (List<Integer> list : cartesianProduct(index + 1, lists)) {
          ((LinkedList<Integer>) list).addFirst(obj);
          result.add((LinkedList<Integer>) list);
        }
      }
    }
    return result;
  }
  
}
