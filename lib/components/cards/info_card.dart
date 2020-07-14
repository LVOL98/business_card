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
  String secondaryRoute,
  String secondaryTitle,
}) {
  return Card(
    shadowColor: Colors.black,
    margin: margin == null ? EdgeInsets.all(15) : margin,
    child: Column(
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
        Padding(
          padding: EdgeInsets.all(5),
          child: Column(
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
        ButtonBar(
          children: [
            if (secondaryTitle != null && secondaryRoute != null)
              FlatButton(
                child: Text(secondaryTitle),
                onPressed: () => secondaryRoute == '' || route == null
                    ? notImplementedYetAlert(context)
                    : Navigator.pushNamed(context, route),
              ),
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
