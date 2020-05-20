import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/util/random_generator.dart';

class AlgorithmPage extends StatefulWidget {
  @override
  _AlgorithmPageState createState() => _AlgorithmPageState();
}

class _AlgorithmPageState extends State<AlgorithmPage> {
  var insertion_sort = InsertionSort();
  List list = RandomGenerator().generatRandomIntegers(100, 100);

  _sort() {
    insertion_sort.sort(list);
    //setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double count = 0;

    return Scaffold(
      body: Column(
        children: [
          Text('I\'m actually beeing used'),
          Container(
            child: Row(
              children: list.map((number) {
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
          RaisedButton(
            onPressed: (_sort),
            child: Text('Sort'),
          ),
        ],
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
    canvas.drawLine(
        Offset(row, 0), Offset(row, length.ceilToDouble()), Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldPainter) {
    //return oldPainter.myParameter != myParameter;
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}

// https://www.youtube.com/watch?v=IMK4yqlT24Q