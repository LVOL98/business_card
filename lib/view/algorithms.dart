import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/quick_sort.dart';
import 'package:temp/model/util/random_generator.dart';

class AlgorithmPage extends StatefulWidget {
  @override
  _AlgorithmPageState createState() => _AlgorithmPageState();
}

class _AlgorithmPageState extends State<AlgorithmPage> {
  //var insertionSort = InsertionSort();
  //var quickSort = QuickSort();
  List insertionSortList = RandomGenerator().generatRandomIntegers(100, 100);
  List quickSortList = RandomGenerator().generatRandomIntegers(100, 100);

  _buildLists(int length) {
    insertionSortList = RandomGenerator().generatRandomIntegers(length, length);
    quickSortList = RandomGenerator().generatRandomIntegers(length, length);
  }

  _sortAnimation() {
    //quickSort.setState(setState);
    //insertionSort.sortAnimation(insertionSortList, setState);
    //quickSort.sort(quickSortList);
  }

  void initState() {
    super.initState();

    //_sortAnimation();
  }

  @override
  Widget build(BuildContext context) {
    double count = 0;
    double anotherCoutner = 0;
    //_buildLists((MediaQuery.of(context).size.height * 0.15).round()); // TODO: this fucks up the sorting

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text((MediaQuery.of(context).size.height * 0.15).round().toString()),
            Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.225, 0, 0, 0),
              child: Row(
                children: insertionSortList.map((number) {
                  count++;

                  return CustomPaint(
                    painter: BarPainter(
                      2,
                      count,
                      number,
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, 100 + MediaQuery.of(context).size.height * 0.05, 0, 0),
            ),
            Text('Some more text'),
            Container(
              margin: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * 0.225, 0, 0, 0),
              child: Row(
                children: quickSortList.map((number) {
                  anotherCoutner++;

                  return CustomPaint(
                    painter: BarPainter(2, anotherCoutner, number),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  0, 100 + MediaQuery.of(context).size.height * 0.05, 0, 0),
            ),
            RaisedButton(
              onPressed: (_sortAnimation),
              child: Text('Sort'),
            ),
          ],
        ),
      ),
    );
  }
}

class BarPainter extends CustomPainter {
  double width, row;
  int length;

  BarPainter(this.width, this.row, this.length);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(width * row, 0),
        Offset(width * row, length.ceilToDouble()), Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldPainter) {
    return true;
  }
}

// https://www.youtube.com/watch?v=IMK4yqlT24Q
