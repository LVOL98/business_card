import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Creates a box with a icon on the left, with some text next to it
Widget oneLineIconCard(
    BuildContext context, IconData iconData, String boxText) {
  return Container(
    width: 450,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(10),
    decoration: new BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        boxShadow: [
          new BoxShadow(
            color: Colors.black,
            blurRadius: 2,
          ),
        ]),
    child: Row(
      children: [
        Icon(iconData),
        SizedBox(
          width: 10,
        ),
        Text(
          boxText,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}
