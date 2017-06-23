package org.rabix.engine.store.model.scatter.impl.table;

import java.util.List;

public class ScatterTableHelper {

  /**
   * Expand list to a given size
   */
  @SuppressWarnings({ "rawtypes", "unchecked" })
  public static void expand(List list, Integer size, Object defaultEmpty) {
    int initialSize = list.size();
    if (initialSize >= size) {
      return;
    }
    for (int i = 0; i < size - initialSize; i++) {
      list.add(defaultEmpty);
    }
  }
  
}
