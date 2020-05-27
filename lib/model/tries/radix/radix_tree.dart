import 'package:temp/model/tries/radix/radix_node.dart';
import 'package:temp/model/tries/radix/radix_util.dart';

class RadixTree {
  RadixNode root;
  
  RadixTree() {
    root = new RadixNode('', 0); // TODO: generic value
  }

  put(String key, int value) {
    // TODO: Error handling

    _put(key, value, root);
  }

  _put(String key, int value, RadixNode node) {
    var value;

    final int largestPrefix = RadixUtil.largestPrefixLength(key, node.getPrefix());

    // Found to identical keys
    if (largestPrefix == node.getPrefix().length && largestPrefix == key.length) {
      value = node.getValue();
      node.setValue(value);
    }
  }
}