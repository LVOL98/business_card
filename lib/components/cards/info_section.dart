import 'package:flutter/material.dart';

Widget infoSection(String pictureURL, {var widthSize, var heightSize}) {
  return Row(
    children: [
      Container(
        width: widthSize,
        height: heightSize,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pictureURL),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Text('Some text, for some tests'),
    ],
  );
}
