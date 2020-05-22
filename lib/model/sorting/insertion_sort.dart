import 'package:temp/model/util/random_generator.dart';

class InsertionSort {
  void sort(List toBeSorted) {
    if (toBeSorted.length == 0) return;

    int length = toBeSorted.length;
    for (int i = 0; i < toBeSorted.length; i++) {
      for (int j = i; j > 0 && _less(toBeSorted[j], toBeSorted[j - 1]); j--) {
        _exchange(toBeSorted, j, j - 1);
      }
    }
  }

  void sortAnimation(List toBeSorted, Function state) async {
    if (toBeSorted.length == 0) return;

    int length = toBeSorted.length;
    for (int i = 0; i < toBeSorted.length; i++) {
      for (int j = i; j > 0 && _less(toBeSorted[j], toBeSorted[j - 1]); j--) {
        _exchange(toBeSorted, j, j - 1);

        await Future.delayed(Duration(microseconds: 500));
        state(() {});
      }
    }
  }

  void sortAnimationLoop(List toBeSorted, Function state) async {
    while (true) {
      if (toBeSorted.length == 0) return;

      int length = toBeSorted.length;
      for (int i = 0; i < toBeSorted.length; i++) {
        for (int j = i; j > 0 && _less(toBeSorted[j], toBeSorted[j - 1]); j--) {
          _exchange(toBeSorted, j, j - 1);

          await Future.delayed(Duration(microseconds: 500));
          state(() {});
        }
      }

      toBeSorted.shuffle();
    }
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
