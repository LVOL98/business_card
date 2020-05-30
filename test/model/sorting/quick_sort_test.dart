import 'package:flutter_test/flutter_test.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/sorting/quick_sort.dart';

void main() {
  var quick_sort;

  setUp() {
    quick_sort = new QuickSort();
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

  group('TODO', () {
    setUp();

    test('TODO', () {
      List list = [2, 1];
      quick_sort.sort(list);
    });
    
    test('TODO', () {
      List list = buildWorstCaseIntegers(100, 'int');
      quick_sort.sort(list);

      list.forEach((element) {
        print(element);
      });
    });
  });
}
