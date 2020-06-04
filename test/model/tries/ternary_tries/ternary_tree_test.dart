import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:temp/main.dart';
import 'package:temp/model/tries/radix/radix_tree.dart';
import 'package:temp/model/tries/radix/radix_util.dart';
import 'package:temp/model/tries/ternary/ternary_tree.dart';

void main() {
  TernaryTrie _ternaryTrie;

  setUp() {
    _ternaryTrie = new TernaryTrie();
  }

  group('Put method', () {

    test('TODO', () {
      setUp();
      _ternaryTrie.put("ab", 1); 
      _ternaryTrie.put("aa", 2);
      for (var element in _ternaryTrie.getStrings()) {
        print(element);
      }
    });
  });

  group('Get method', () {
    setUp();

    test('TODO', () {
      _ternaryTrie.put('aaa', 1);
      var value = _ternaryTrie.getValue('aaa'); 
      print(value);
    });
  });
}
