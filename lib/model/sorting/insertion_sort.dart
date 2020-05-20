class InsertionSort {
  void sort(List toBeSorted) {
    if (toBeSorted.length == 0) return;

    int length = toBeSorted.length;
    for (int i = 0; i < toBeSorted.length; i++) {
      for (int j = i; j > 0 && less(toBeSorted[j], toBeSorted[j-1]); j--) {
        exchange(toBeSorted, j, j-1);
      }
    }
  }

  bool less(v, w) {
    return v.compareTo(w) < 0;
  }

  void exchange(List list, int i, int j) {
    var temp = list[i];
    list[i] = list[j];
    list[j] = temp; 
  }
}