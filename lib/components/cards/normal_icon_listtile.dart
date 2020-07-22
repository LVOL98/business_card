import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:temp/components/dialogs/not_implemented.dart';
import 'package:temp/exceptions/route_exception.dart';
import 'package:temp/theme/style.dart';

/// Creates a card with the flutter ListTile layout, where the [iconData]
/// will be shown to the left of the text, and the next arrow will be
/// to the right of the text
///
/// [route] is required unless [notImplemented] is set to true, and if a
/// given route can't not be executed, the unknownRoute will be used
/// 
/// A placeholder is given, if the user wants to see how to componenet looks
class normalIconListTile extends StatelessWidget {
  IconData iconData;
  String title;
  String body;
  String route;
  double widthSize;
  double heightSize;
  EdgeInsets margin;
  bool notImplemented;

  normalIconListTile(this.iconData, this.title, this.body, this.route,
      {this.widthSize, this.heightSize, this.margin, this.notImplemented});

  normalIconListTile.placeholder() {
    this.iconData = Icons.ac_unit;
    this.title = 'Placeholder';
    this.body = 'This is a placeholder';
    this.route = '';
    this.notImplemented = true;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: margin == null ? EdgeInsets.all(0) : EdgeInsets.all(20),
      color: Theme.of(context).colorScheme.secondary,
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              iconData,
              size: MediaQuery.of(context).size.width * 0.1,
              color: Colors.white,
            ),
            title: Text(
              title,
              style: Theme.of(context).textTheme.headline2,
            ),
            subtitle: Text(
              body,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            trailing: Column(
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
            onTap: () {
              if (notImplemented == true) {
                notImplementedYetAlert(context);
              } else {
                Navigator.pushNamed(context, route);
              }
            },
          ),
        ],
      ),
    );
  }
}
