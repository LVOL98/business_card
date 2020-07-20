import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates a card with a defined picture as backgrind, Which then contains a title togheter with
/// text and a text prompt to read more
///
/// The [route] variable is meant as the route defined in the Material App route structure
Widget infoCard(
  var context,
  String pictureURL,
  String title,
  String body,
  String route, {
  var imageWidth,
  var imageHeight,
  var cardWidth,
  var cardHeight,
  var margin,
  String secondaryRoute,
  String secondaryTitle,
}) {
  return Container(
    width: cardWidth,
    height: cardHeight,
    child: Card(
      color: Theme.of(context).colorScheme.secondary,
      shadowColor: Colors.black,
      margin: margin == null ? EdgeInsets.all(15) : margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            pictureURL,
            width: imageWidth == null
                ? MediaQuery.of(context).size.width * 1
                : imageWidth,
            height: imageHeight == null
                ? MediaQuery.of(context).size.height * 0.15
                : imageHeight,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline3,
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
    ),
  );
}
