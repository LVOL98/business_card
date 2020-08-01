import 'package:flutter/material.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/sort.dart';
import 'package:temp/model/util/random_generator.dart';

class BarSorting extends StatefulWidget {
  final String title;
  final Sort sortingMethod;
  final double width;

  BarSorting(this.title, this.sortingMethod, this.width);

  @override
  _BarSortingState createState() => _BarSortingState(title, sortingMethod, width);
}

class _BarSortingState extends State<BarSorting> {
  final String title;
  final Sort sortingMethod;
  final double width;

  _BarSortingState(this.title, this.sortingMethod, this.width);

  List _listBeingSorted;

  _sortAnimation() {
    sortingMethod.sortAnimation(_listBeingSorted);
  }

  _clearSort() {
    _listBeingSorted =
        RandomGenerator().generatRandomIntegers(width.toInt(), width.toInt());
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (_listBeingSorted == null)
      _listBeingSorted =
          RandomGenerator().generatRandomIntegers(width.toInt(), width.toInt());
    double countOfBars = 0;

    return Container(
      width: (width * 2),
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
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
            Padding(
              padding: new EdgeInsets.fromLTRB(0, width, 0, 0),
              child: Container(
                color: Theme.of(context).colorScheme.secondaryVariant,
                child: ListTile(
                  leading: FlatButton(
                    child: Text('Sort'),
                    onPressed: () {
                      _sortAnimation();
                    },
                  ),
                  trailing: FlatButton(
                    child: Text('Clear'),
                    onPressed: () {
                      _clearSort();
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BarPainter extends CustomPainter {
  BuildContext context;
  double width;
  double row;
  int length;
  Paint myColor;

  BarPainter(this.context, this.width, this.row, this.length) {
    this.myColor = new Paint();
    this.myColor.color = Theme.of(context).colorScheme.primaryVariant;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawLine(Offset(0 + (width * row), 0),
        Offset(0 + (width * row), length.ceilToDouble()), myColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldPainter) {
    return true;
  }
}
