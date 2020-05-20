import 'package:flutter_test/flutter_test.dart';
import 'package:temp/model/sorting/insertion_sort.dart';

void main() {
  var insertion_sort;

  setupTest() {
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
    test('Worst case for insertion sort, with 100 integers', () {
      setupTest();

      var list = buildWorstCaseIntegers(100, 'int');
      insertion_sort.sort(list);

      for (var i = 0; i < list.length; i++) {
        expect(list[i], i + 1);
      }
    });
  });
}
