import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:temp/main.dart';
import 'package:temp/model/tries/radix/radix_util.dart';

void main() {
  group('Test largest prefix', () {
    //setUp();

    test('To identical strings', () {
      String a = 'We are identical';
      String b = 'We are identical';

      expect(a.length, RadixUtil.largestPrefixLength(a, b));
    });

    test('To completly different strings', () {
      String a = 'I do not look like the other';
      String b = 'You can really see that';

      expect(0, RadixUtil.largestPrefixLength(a, b));
    });

    test('All identical until space', () {
      String a = 'test that are not similair';
      String b = 'test but it would be nicer';

      expect(5, RadixUtil.largestPrefixLength(a, b));
    });
  });
}
