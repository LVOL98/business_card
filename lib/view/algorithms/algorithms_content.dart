import 'package:flutter/cupertino.dart';
import 'package:temp/components/sorting_visualization/bar_sorting.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/quick_sort.dart';

insertionSortBar(BuildContext context, Function setState) {
  return BarSorting('Insertion Sort', new InsertionSort(setState),
      MediaQuery.of(context).size.width * 0.225);
}

quickSortBar(BuildContext context, Function setState) {
  return new BarSorting('QuickSort', QuickSort(setState),
      MediaQuery.of(context).size.width * 0.225);
}
