import 'dart:math';

class RandomGenerator {
  List generatRandomIntegers(int count, int max) {
    List list = [];
    
    var random = new Random();
    for (var i = 0; i < count; i++) {
      list.add(random.nextInt(max));
    }

    return list;
  }
}