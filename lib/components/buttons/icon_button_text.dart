import 'package:flutter/material.dart';
import 'package:temp/model2/url_launcher/open_url.dart';

Widget iconButtonText(
    var context, IconData icon, String description, String url,
    {double iconSize}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Ink(
        // TODO: find a better solution
        width: iconSize + 20,
        height: iconSize + 20,
        decoration: ShapeDecoration(
          // TODO: shape decoration is not working
          color: Theme.of(context).colorScheme.secondary,
          shape: CircleBorder(),
        ),
        child: IconButton(
          icon: Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
            size: iconSize,
          ),
          onPressed: () {
            openURL(url);
          },
        ),
      ),
      Center(
        child: Text(
          description,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    ],
  );
}
