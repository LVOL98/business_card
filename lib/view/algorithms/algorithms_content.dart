import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/sorting_visualization/bar_sorting.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/quick_sort.dart';

title(BuildContext context) {
  return Text(
    'Title',
    style: Theme.of(context).textTheme.headline2,
  );
}

introText(BuildContext context) {
  return Text(
    'Introduction',
    style: Theme.of(context).textTheme.bodyText1,
  );
}

sortTitle(BuildContext context) {
  return Column(
    children: [
      Text('Sorting'),
      Divider(
        color: Colors.black,
        thickness: 2,
      ),
    ],
  );
}

insertionSortBar(BuildContext context, Function setState) {
  return Column(
    children: [
      Text('About Insertion Sort'),
      BarSorting('Insertion Sort', new InsertionSort(setState),
          MediaQuery.of(context).size.width * 0.4),
    ],
  );
}

quickSortBar(BuildContext context, Function setState) {
  return new BarSorting('QuickSort', QuickSort(setState),
      MediaQuery.of(context).size.width * 0.4);
}
