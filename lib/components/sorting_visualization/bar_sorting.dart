import 'package:flutter/material.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/util/random_generator.dart';

class BarSorting extends StatelessWidget {
  List _insertionSortList = RandomGenerator().generatRandomIntegers(100, 100);

  @override
  Widget build(BuildContext context) {
    double countOfBars = 0;

    return Container(
      child: Row(
        children: _insertionSortList.map(
          (number) {
            countOfBars++;

            return CustomPaint(
              painter: BarPainter(2, countOfBars, number),
            );
          },
        ).toList(),
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
