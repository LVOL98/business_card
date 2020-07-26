import 'package:flutter_test/flutter_test.dart';
import 'package:temp/model/sorting/insertion_sort.dart';

void main() {
  var insertion_sort;

  setUp() {
    insertion_sort = new InsertionSort();
  }

  List buildWorstCaseIntegers(int length, String type) {
    if ('int' == type) {
      var list = [];
      for (var i = length; i > 0; i--) {
        list.add(i);
      }

      return list;
    }
  }

  group('Test of insertion sort with integers', () {
    setUp();

    test('Worst case for insertion sort, with 100 integers', () {
      var list = buildWorstCaseIntegers(100, 'int');
      insertion_sort.sort(list);

      for (var i = 0; i < list.length; i++) {
        expect(list[i], i + 1);
      }
    });
  });

  group('Test of insertion sort with String', () {
    setUp();

    test('Simple test of abc sort in reverse order', () {
      var list = ['c', 'b', 'a'];

      insertion_sort.sort(list);
      expect(list[0], 'a');
      expect(list[1], 'b');
      expect(list[2], 'c');
    });
  });
}
