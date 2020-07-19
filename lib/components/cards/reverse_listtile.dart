import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

Widget reverseListTile(
    var context, IconData iconData, String title, String body, String route,
    {var widthSize, var heightSize}) {
  return Card(
    margin: EdgeInsets.all(20),
    color: Theme.of(context).colorScheme.secondary,
    child: Column(
      children: [
        ListTile(
          mouseCursor: MouseCursor.defer, // removes the clickable cursor
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline2,
          ),
          subtitle: Text(
            body,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          trailing: Icon(
            iconData,
            size: MediaQuery.of(context).size.width * 0.1,
            color: Colors.white,
          ),
        ),
        ButtonBar(
          children: [
            FlatButton(
              child: Text('Read More >'),
              onPressed: () => route == '' || route == null
                  ? notImplementedYetAlert(context)
                  : Navigator.pushNamed(context, route),
            ),
          ],
        )
      ],
    ),
  );
}
