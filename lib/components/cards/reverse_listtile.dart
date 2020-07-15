import 'package:flutter/material.dart';

Widget reverseListTile(
    var context, String pictureURL, String title, String body,
    {var widthSize, var heightSize}) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Row(
      children: [
        Container(
          width: widthSize == null ? MediaQuery.of(context).size.width * 0.965 - MediaQuery.of(context).size.width * 0.2 : 100,
          child: Column(
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
        ),
        Image.asset(
          pictureURL,
          width: widthSize == null
              ? MediaQuery.of(context).size.width * 0.2
              : widthSize,
        ),
      ],
    ),
  );
}
