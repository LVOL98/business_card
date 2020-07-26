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

  List generateRandomDouble(double count, double max) {
    List list = [];
    
    var random = new Random();
    for (var i = 0; i < count; i++) {
      list.add(random.nextDouble()* 100);
    }

    return list;
  }
}