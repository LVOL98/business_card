import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget infoCard(var context, String route, String headline, String body,
    {var size, Color color}) {
  return Container(
    width: size,
    child: Card(
      shadowColor: Colors.black,
      child: InkWell(
        child: Stack(
          children: [
            Image(
              image: AssetImage('resources/misc/ITU.jpg'),
            ),
            Column(
              children: [
                Text(
                  headline,
                  style: TextStyle(
                    color: color,
                    fontFamily:
                        Theme.of(context).textTheme.headline2.fontFamily,
                    fontSize: Theme.of(context).textTheme.headline2.fontSize,
                  ),
                ),
                Text(
                  body,
                  style: TextStyle(
                    color: color,
                    fontFamily:
                        Theme.of(context).textTheme.bodyText1.fontFamily,
                    fontSize: Theme.of(context).textTheme.bodyText1.fontSize,
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
