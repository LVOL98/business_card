import 'package:flutter/material.dart';
import 'package:temp/model/url_launcher/open_url.dart';

/// A widget with a icon button above a given name
/// 
/// Either a [url] or a [route] must be given, or a error
/// will be thrown. The route should follow the Material App route structure.
/// If both a url and a route is given, the url is chosen
Widget iconButtonText(BuildContext context, IconData icon, String description,
    {String url, String route, double iconSize}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Ink(
        // aligns the icon with the text, will need a better solution
        width: iconSize + 20,
        height: iconSize + 20,
        child: IconButton(
          icon: Icon(
            icon,
            color: Theme.of(context).colorScheme.secondary,
            size: iconSize,
          ),
          // TODO: execption
          onPressed: () {
            url != null ? openURL(url) : Navigator.pushNamed(context, route);
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
