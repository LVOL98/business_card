import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget infoCard(var context, String route, String pictureURL, String headline,
    String body,
    {String readMoreText, var size, Color textColor}) {
  print(readMoreText);
  return Container(
    width: size,
    child: Card(
      shadowColor: Colors.black,
      child: InkWell(
        child: Stack(
          children: [
            Image.asset(pictureURL),
            Column(
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
                Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    readMoreText == null ? 'Read More >' : readMoreText,
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    ),
  );
}
