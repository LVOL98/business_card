class QuickSort {
  void sort(List list) {
    list.shuffle();
    _sort(list, 0, list.length - 1);
  }

  void _sort(List list, int low, int high) {
    if (high <= low) return;
    int j = _partition(list, low, high);
    _sort(list, low, j - 1);
    _sort(list, j + 1, high);
  }

  int _partition(List list, int low, int high) {
    int i = low;
    int j = high + 1;

    var toCompare = list[low];

    while (true) {
      while (_less(list[++i], toCompare)) if (i == high) break;
      while (_less(toCompare, list[--j])) if (j == low) break;
      if (j <= i) break;
      _exchange(list, i, j);
    }
    _exchange(list, low, j);
    return j;
  }

  bool _less(v, w) {
    return v.compareTo(w) < 0;
  }

  void _exchange(List list, int i, int j) {
    var temp = list[i];
    list[i] = list[j];
    list[j] = temp;
  }
}
