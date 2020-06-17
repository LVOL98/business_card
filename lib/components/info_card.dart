import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget infoCard(
    var context, String route, String pictureURL, String headline, String body,
    {String readMoreText, var widthSize, var heightSize, Color textColor}) {
  return Container(
    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
    width: widthSize,
    height: heightSize,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(pictureURL),
        fit: BoxFit.cover,
      ),
    ),
    child: Card(
      color: Colors.transparent,
      shadowColor: Colors.black,
      child: InkWell(
        child: Column(
          children: [
            Text(
              headline,
              style: TextStyle(
                color: textColor,
                fontFamily:
                    Theme.of(context).textTheme.headline2.fontFamily,
                fontSize: Theme.of(context).textTheme.headline2.fontSize,
              ),
            ),
            Text(
              body,
              style: TextStyle(
                color: textColor,
                fontFamily:
                    Theme.of(context).textTheme.bodyText1.fontFamily,
                fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                readMoreText == null ? 'Read More >' : readMoreText,
                style: TextStyle(
                  color: textColor,
                  fontFamily:
                      Theme.of(context).textTheme.bodyText1.fontFamily,
                  fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
                ),
              ),
            ),
          ],
        ),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    ),
  );
}
