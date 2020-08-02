import 'package:flutter/material.dart';
import 'package:temp/components/sorting_visualization/bar_sorting.dart';
import 'package:temp/components/structure/mobile_page_structure.dart';
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
    return MobilePageStructure(
      'resources/misc/Algo.jpg',
      Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            pageTitle(context),
            sortTitle(context),
            Center(
              child: insertionSortBar(context, setState),
            ),
            quickSortBar(context, setState),
          ],
        ),
      ),
      topRightIconColor: Colors.black,
    );
  }
}
