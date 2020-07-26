import 'package:flutter/material.dart';
import 'package:temp/components/dialogs/not_implemented.dart';
import 'package:temp/model/url_launcher/open_url.dart';

/// A widget with a icon button above a given name
///
/// If [notImplemented] is set to false, either a [url] or a [route]
/// must be given, or the program will go to the unknown page. The
/// route should follow the Material App route structure.
///
/// If both a url and a route is given, the url is chosen
///
/// The placeholder constructor creates a placeholder which is a
/// standard version of this component
class IconButtonText extends StatelessWidget {
  IconData icon;
  String description;
  String url;
  String route;
  double iconSize;
  bool notImplemented;

  IconButtonText(this.icon, this.description,
      {this.url, this.route, this.iconSize, this.notImplemented});

  IconButtonText.placeHolder() {
    this.icon = Icons.ac_unit;
    this.description = 'This is a placeholder';
    this.url = '';
    this.route = '';
    this.iconSize = 30;
    this.notImplemented = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Ink(
          // aligns the icon with the text
          width: iconSize + 20,
          height: iconSize + 20,
          child: IconButton(
            icon: Icon(
              icon,
              color: Theme.of(context).colorScheme.secondary,
              size: iconSize,
            ),
            onPressed: () {
              if (notImplemented == true) {
                notImplementedYetAlert(context);
              } else {
                url != null
                    ? openURL(url)
                    : Navigator.pushNamed(context, route);
              }
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
}
