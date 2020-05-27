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
    var ret; // TODO: what does this exactly do?

    final int largestPrefix =
        RadixUtil.largestPrefixLength(key, node.getPrefix());

    if (largestPrefix == node.getPrefix().length &&
        largestPrefix == key.length) {
      // Found to identical keys
      ret = node.getValue();
      node.setValue(value);

    } else if (largestPrefix == 0 ||
        (largestPrefix < key.length &&
            largestPrefix >= node.getPrefix().length)) {
      // Key is longer than the current node
      final String leftOver = key.substring(largestPrefix);

      // Checks wheter the children could hold the last of
      // the string
      bool found = false;
      for (var child in node.getChildren()) {
        String wtfDart = child.getPrefix();
        if (wtfDart[0] == leftOver[0]) {
          found = true;
          ret = _put(leftOver, value, child);
          break;
        }
      }

      // No children had the last of the key, makes a new node
      if (!found) {
        RadixNode newNode = new RadixNode(leftOver, value);
        node.getChildren().add(newNode);
      }

    } else if (largestPrefix < node.getPrefix().length) {
      // split node
      String leftOver = node.getPrefix().substring(largestPrefix);
      RadixNode newNode = new RadixNode(leftOver, node.getValue());
      newNode.getChildren().addAll(node.getChildren());

      node.setPrefix(node.getPrefix().substring(0, largestPrefix));
      node.getChildren().clear();
      node.getChildren().add(newNode);

      if (largestPrefix == key.length) {
        // Key was equal to the split node
        ret = node.getValue();
        node.setValue(value);
      } else {
        // key was longer than split node
        RadixNode keyNode = new RadixNode(key.substring(largestPrefix), value);
        node.getChildren().add(keyNode);
      }
    }
  }
}
