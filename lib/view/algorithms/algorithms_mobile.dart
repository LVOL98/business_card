import 'package:flutter/material.dart';
import 'package:temp/components/sorting_visualization/bar_sorting.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/quick_sort.dart';
import 'package:temp/view/algorithms/algorithms_content.dart';

class AlgorithmPageMobile extends StatefulWidget {
  @override
  _AlgorithmPageMobileState createState() => _AlgorithmPageMobileState();
}

class _AlgorithmPageMobileState extends State<AlgorithmPageMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: insertionSortBar(context, setState),
          ),
          quickSortBar(context, setState),
        ],
      ),
    );
  }
}
