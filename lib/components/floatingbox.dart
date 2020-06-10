import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget floatingBox(var context, String title, String text) {
  return Container(
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Theme.of(context).colorScheme.secondary,
          blurRadius: 20,
        ),
      ],
    ),
    child: Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(text, style: Theme.of(context).textTheme.bodyText1),
      ],
    ),
  );
}
