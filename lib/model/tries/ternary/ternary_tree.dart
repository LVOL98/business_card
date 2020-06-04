import 'dart:collection';

import 'package:temp/model/tries/ternary/ternary_node.dart';

class TernaryTrie {
  TernaryNode _root;

  put(String key, var value) {
    _root = _put(_root, key, value, 0);
  }

  TernaryNode _put(TernaryNode node, String key, var value, int depth) {
    var char = key[depth];
    if (node == null) node = new TernaryNode(char);

    if (key.codeUnitAt(depth) < node.getChar().codeUnitAt(0)) {
      node.setLeftChild(_put(node.getLeftChild(), key, value, depth));
    } else if (char.codeUnitAt(0) > node.getChar().codeUnitAt(0)) {
      node.setRightChild(_put(node.getRightChild(), key, value, depth));
    } else if (depth < key.length - 1) {
      node.setMidChild(_put(node.getMidChild(), key, value, depth + 1));
    } else {
      node.setValue(value);
    }
    return node;
  }

  getValue(String key) {
    return _getValue(_root, key, 0);
  }

  _getValue(TernaryNode node, String key, int depth) {
    if (node == null) return null;
    var char = key[depth];
    
    if (key.codeUnitAt(depth) < node.getChar().codeUnitAt(0)) {
      _getValue(node.getLeftChild(), key, depth);
    } else if (key.codeUnitAt(depth) >node.getChar().codeUnitAt(0)) {
      _getValue(node.getRightChild(), key, depth);
    } else if (depth < key.length - 1) {
      _getValue(node.getMidChild(), key, depth + 1);
    } else {
      return node.getValue();
    }
  }

  getStrings() {
    Queue<String> returnQueue;
    _collect(_root, new StringBuffer(), returnQueue);
  }

  _collect(TernaryNode node, StringBuffer prefix, Queue<String> queue) {
    if (node == null) return ;
    _collect(node.getLeftChild(), prefix, queue);
    if (node.getValue() != null) queue.add(prefix.toString());
    _collect(node.getMidChild(), prefix.write(node.getChar()), queue);
  }
}
