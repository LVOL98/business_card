import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates a card with a defined picture as backgrind, Which then contains a title togheter with 
/// text and a text prompt to read more
/// 
/// The [route] variable is meant as the route defined in the Material App route structure
Widget infoCard(
    var context, String route, String pictureURL, String headline, String body,
    {String readMoreText, var widthSize, var heightSize, Color textColor, EdgeInsetsGeometry margin}) {
  return Container(
    margin: margin == null ? EdgeInsets.fromLTRB(10, 10, 10, 10) : margin,
    width: widthSize,
    height: heightSize,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(pictureURL),
        fit: BoxFit.cover,
      ),
    ),
    child: Card(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0), // needed or else the on hover shadow effect will have an inset
      color: Colors.transparent,
      shadowColor: Colors.black,
      child: InkWell(
        child: Column(
          children: [
            Text(
              headline,
              style: TextStyle(
                color: textColor == null
                    ? Theme.of(context).textTheme.headline2.color
                    : textColor,
                fontFamily: Theme.of(context).textTheme.headline2.fontFamily,
                fontSize: Theme.of(context).textTheme.headline2.fontSize,
              ),
              textAlign: TextAlign.left,
            ),
            Text(
              body,
              style: TextStyle(
                color: textColor == null
                    ? Theme.of(context).textTheme.bodyText1.color
                    : textColor,
                fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                readMoreText == null ? 'Read More >' : readMoreText,
                style: TextStyle(
                  color: textColor == null
                      ? Theme.of(context).textTheme.bodyText1.color
                      : textColor,
                  fontFamily: Theme.of(context).textTheme.bodyText1.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
                ),
              ),
            ),
          ],
        ),
        onTap: () => route == '' || route == null
            ? notImplementedYetAlert(context)
            : Navigator.pushNamed(context, route),
      ),
    ),
  );
}