import 'package:flutter/material.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/sort.dart';
import 'package:temp/model/util/random_generator.dart';

class BarSorting extends StatefulWidget {
  final Sort sortingMethod;

  BarSorting(this.sortingMethod);

  @override
  _BarSortingState createState() => _BarSortingState(sortingMethod);
}

class _BarSortingState extends State<BarSorting> {
  final Sort sortingMethod;

  _BarSortingState(this.sortingMethod);

  static const int _bar_size = 100;

  List _listBeingSorted =
      RandomGenerator().generatRandomIntegers(_bar_size, _bar_size);

  _sortAnimation() {
    sortingMethod.sortAnimation(_listBeingSorted);
  }

  _clearSort() {
    _listBeingSorted = RandomGenerator().generatRandomIntegers(100, 100);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double countOfBars = 0;

    return Column(
      children: [
        Row(
          children: _listBeingSorted.map(
            (number) {
              countOfBars++;

              return CustomPaint(
                painter: BarPainter(context, 2, countOfBars, number),
              );
            },
          ).toList(),
        ),
        FlatButton(
          child: Text('Sort'),
          onPressed: () {
            _sortAnimation();
          },
        ),
        FlatButton(
          child: Text('Clear'),
          onPressed: () {
            _clearSort();
          },
        )
      ],
    );
  }
}

class BarPainter extends CustomPainter {
  BuildContext context;
  double width;
  double row;
  int length;

  BarPainter(this.context, this.width, this.row, this.length);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(
        Offset((MediaQuery.of(context).size.width * 0.225) + (width * row), 0),
        Offset((MediaQuery.of(context).size.width * 0.225) + (width * row),
            length.ceilToDouble()),
        Paint());
  }

  @override
  bool shouldRepaint(CustomPainter oldPainter) {
    return true;
  }
}
