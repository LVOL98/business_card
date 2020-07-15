import 'package:flutter/material.dart';

Widget normalListTile(var context, String pictureURL, String title, String body,
    {var widthSize, var heightSize}) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Row(
      children: [
        Image.asset(
          pictureURL,
          width: widthSize == null
              ? MediaQuery.of(context).size.width * 0.2
              : widthSize,
        ),
        Padding(
          padding: EdgeInsets.all(5),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              body,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ],
    ),
  );
}
