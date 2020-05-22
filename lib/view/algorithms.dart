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
  var insertion_sort = InsertionSort();
  var quick_sort = QuickSort();
  List list_for_insertion_sort =
      RandomGenerator().generatRandomIntegers(100, 100);
  List list_for_quick_sort = RandomGenerator().generatRandomIntegers(100, 100);

  _sortAnimation() {
    insertion_sort.sortAnimation(list_for_insertion_sort, setState);
  }

  void initState() {
    super.initState();

    //_sortAnimation();
  }

  @override
  Widget build(BuildContext context) {
    double count = 0;
    double anotherCoutner = 0;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(MediaQuery.of(context).size.width.toString()),
                Container(
                  margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.25, 0, 0, 0),
                  child: Row(
                    children: list_for_insertion_sort.map((number) {
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
                /* Row(
                    children: list_for_insertion_sort.map((number) {
                      //anotherCoutner++;

                      return CustomPaint(
                        painter: BarPainter(2, anotherCoutner, number),
                      );
                    }).toList(),
                  ), */
              ],
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
