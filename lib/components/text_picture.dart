import 'package:flutter/material.dart';

Widget pitureLeft(Image image, String text) {
  return Container(
    child: Row(children: [
      FlutterLogo(),
      Text(text),
    ]),
  );
}
