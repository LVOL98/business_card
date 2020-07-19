import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates a card with the flutter ListTile layout, where the [iconData]
/// will be shown to the right of the text, and the next arrow will be 
/// to the left of the text
/// 
/// Only [route] can be set as null, without breaking the program. If it is 
/// the case that the [route] is null or '', the program will throw a 
/// RouteException (TODO)
Widget reverseIconListTile(
    var context, IconData iconData, String title, String body, String route,
    {var widthSize, var heightSize, EdgeInsets margin}) {
  return Card(
    margin: margin == null ? EdgeInsets.all(0) : margin,
    color: Theme.of(context).colorScheme.secondary,
    child: Column(
      children: [
        ListTile(
          leading: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 180 * 3.14 / 180,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
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
          onTap: () => route == '' || route == null
              ? notImplementedYetAlert(context)
              : Navigator.pushNamed(context, route),
        ),
      ],
    ),
  );
}
