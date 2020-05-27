import 'dart:math';

class RadixUtil {
  /**
   * TODO: doc
   */
  static largestPrefixLength(String a, String b) {
    var len = 0;
    for (var i = 0; i < min(a.length, b.length); i++) {
      if (a[i] != b[i]) break;
      len++;
    }
    return len;
  }
}