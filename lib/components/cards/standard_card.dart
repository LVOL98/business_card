import 'package:flutter/material.dart';

Widget standardCard(var context, String pictureURL, String title, String body) {
  return Card(
    color: Theme.of(context).colorScheme.secondary,
    shadowColor: Colors.black,
    child: ListTile(
      leading: Image.asset(pictureURL),
      title: Text(title),
      subtitle: Text(body),
    ),
  );
}