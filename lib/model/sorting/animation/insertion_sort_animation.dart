import 'package:temp/model/sorting/insertion_sort.dart';

class InsertionSortAnimation extends InsertionSort {
  //Function state;

  //InsertionSortAnimation(this.state);

  @override
  void sort(List toBeSorted) {
    if (toBeSorted.length == 0) return;

    int length = toBeSorted.length;
    for (int i = 0; i < toBeSorted.length; i++) {
      for (int j = i; j > 0 && less(toBeSorted[j], toBeSorted[j-1]); j--) {
        exchange(toBeSorted, j, j-1);
        //state();
      }
    }
  }
}