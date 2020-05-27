import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:temp/main.dart';
import 'package:temp/model/tries/radix/radix_tree.dart';
import 'package:temp/model/tries/radix/radix_util.dart';

void main() {
  RadixTree _radixTree;

  setUp() {
    _radixTree = new RadixTree();
  }

  tearDown() {
    _radixTree = null;
  }

  group('Insertion into the tree', () {
    setUp();

    test('Insertion into a empty tree', () {
      _radixTree.put('testing', 1);
    });

    test('Insertion of one Node', () {
      _radixTree.put('going', 2);
    });

    test('Insertion of a key that causes a split, but only creates a previous node', () {
      _radixTree.put('go', 3);
    });

    test('Insertion of a key that causes a split, and creates a new node ', () {
      _radixTree.put('tester', 4);
    });
  });
}
