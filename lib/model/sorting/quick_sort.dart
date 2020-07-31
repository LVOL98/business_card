import 'package:temp/model/sorting/sort.dart';

class QuickSort extends Sort {
  @override
  Function state;

  QuickSort(this.state);

/*   Function state;

  setState(Function state) {
    this.state = state;
  } */

  void sort(List toBeSorted) {
    toBeSorted.shuffle();
    _sort(toBeSorted, 0, toBeSorted.length - 1);
  }

  void _sort(List toBeSorted, int low, int high) {
    if (high <= low) return;
    int j = _partition(toBeSorted, low, high);
    _sort(toBeSorted, low, j - 1);
    _sort(toBeSorted, j + 1, high);
  }

  _partition(List toBeSorted, int low, int high) async {
    int i = low;
    int j = high + 1;

    var toCompare = toBeSorted[low];

    while (true) {
      while (_less(toBeSorted[++i], toCompare)) if (i == high) break;
      while (_less(toCompare, toBeSorted[--j])) if (j == low) break;
      if (j <= i) break;
      _exchange(toBeSorted, i, j);

    }
    _exchange(toBeSorted, low, j);

    return j;
  }

  bool _less(v, w) {
    return v.compareTo(w) < 0;
  }

  void _exchange(List toBeSorted, int i, int j) {
    var temp = toBeSorted[i];
    toBeSorted[i] = toBeSorted[j];
    toBeSorted[j] = temp;
  }

  @override
  void sortAnimation(List toBeSorted) {
    _sortAnimation(toBeSorted, 0, toBeSorted.length - 1);
  }

  void _sortAnimation(List toBeSorted, int low, int high) async {
    if (high <= low) return;
    int j = await _partitionAnimation(toBeSorted, low, high);
    _sortAnimation(toBeSorted, low, j - 1);
    _sortAnimation(toBeSorted, j + 1, high);
  }

  _partitionAnimation(List toBeSorted, int low, int high) async {
    int i = low;
    int j = high + 1;

    var toCompare = toBeSorted[low];

    while (true) {
      while (_less(toBeSorted[++i], toCompare)) if (i == high) break;
      while (_less(toCompare, toBeSorted[--j])) if (j == low) break;
      if (j <= i) break;
      _exchange(toBeSorted, i, j);

      await Future.delayed(Duration(microseconds: 100000));
      state(() {});
    }
    _exchange(toBeSorted, low, j);
    await Future.delayed(Duration(microseconds: 100000));
    state(() {});

    return j;
  }
}
