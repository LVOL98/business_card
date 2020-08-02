import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/sorting_visualization/bar_sorting.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/quick_sort.dart';

pageTitle(BuildContext context) {
  return Column(
    children: [
      Text(
        'Algorithms',
        style: Theme.of(context).textTheme.headline2,
      ),
      Text(
        'During my studies we had a mandatory algorithm course, which have given me some basic knowledge of algorithms. As a way to practice this I\'ve mad this page, in which I will add various algorithms as both practice and a way for me to get a deeper understanding of how they work',
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    ],
  );
}

sortTitle(BuildContext context) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Text(
          'Sorting',
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
      Divider(
        color: Colors.black,
        thickness: 2,
      ),
    ],
  );
}

insertionSortBar(BuildContext context, Function setState) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
    child: Column(
      children: [
        BarSorting('Insertion Sort', new InsertionSort(setState),
            MediaQuery.of(context).size.width * 0.4),
        Text(
          'About Insertion Sort',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}

quickSortBar(BuildContext context, Function setState) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(0, 0, 0, 25),
    child: Column(
      children: [
        BarSorting('QuickSort', QuickSort(setState),
            MediaQuery.of(context).size.width * 0.4),
        Text(
          'About Quick Sort',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}
