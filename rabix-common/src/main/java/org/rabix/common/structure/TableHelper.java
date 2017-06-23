package org.rabix.common.structure;

import java.util.List;

public class TableHelper {

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
