import 'package:flutter/material.dart';

Widget pitureLeft(Image image, String text) {
  return Container(
    child: Row(children: [
      FlutterLogo(),
      Text(text),
    ]),
  );
}

Widget pictureTop(String picturePath, String text) {
  return Container(
    child: Column(children: [
      FlutterLogo(
        size: 100,
      ),
      Text(text),
    ]),
  );
}

Widget pictureBack(var context, String pictureURL, String text) {
  return Stack(
    children: [
      Image.asset(
        pictureURL,
        fit: BoxFit.fill,
      ),
      Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    ],
  );
}
