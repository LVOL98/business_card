import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates a card with a defined picture as backgrind, Which then contains a title togheter with
/// text and a text prompt to read more
///
/// The [route] variable is meant as the route defined in the Material App route structure
Widget infoCard(
  var context,
  String title,
  String body,
  String pictureURL,
  String route, {
  var widthSize,
  var heightSize,
  var margin,
  String secondaryURL,
  String secondaryTitle,
}) {
  return Card(
    margin: margin == null ? EdgeInsets.fromLTRB(10, 10, 10, 10) : margin,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          pictureURL,
          width: widthSize == null
              ? MediaQuery.of(context).size.width * 1
              : widthSize,
          height: heightSize == null
              ? MediaQuery.of(context).size.height * 0.25
              : heightSize,
          fit: BoxFit.cover,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.bodyText1,
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