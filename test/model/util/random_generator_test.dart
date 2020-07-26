import 'package:flutter_test/flutter_test.dart';
import 'package:temp/model/sorting/insertion_sort.dart';
import 'package:temp/model/util/random_generator.dart';

void main() {
  var random_generator = RandomGenerator();

  group('TODO', () {
    test('TODO', () {
      var randomIntList = random_generator.generatRandomIntegers(100, 200);
      randomIntList.forEach((element) {
        print(element);
      });
    });
  });
}
