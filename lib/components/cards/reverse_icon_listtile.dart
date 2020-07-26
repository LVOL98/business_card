import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates a card with the flutter ListTile layout, where the [iconData]
/// will be shown to the right of the text, and the next arrow will be
/// to the left of the text
///
/// [route] is required unless [notImplemented] is set to true, and if a
/// given route can't not be executed, the unknownRoute will be used
///
/// A placeholder is given, if the user wants to see how to componenet looks
class ReverseIconListTile extends StatelessWidget {
  IconData iconData;
  String title;
  String body;
  String route;
  double widthSize;
  double heightSize;
  EdgeInsets margin;
  bool notImplemented;

  ReverseIconListTile(this.iconData, this.title, this.body, this.route,
      {this.widthSize, this.heightSize, this.margin, this.notImplemented});

  ReverseIconListTile.placeholder() {
    this.iconData = Icons.ac_unit;
    this.title = 'Placeholder';
    this.body = 'This is a placeholder';
    this.route = '';
    this.notImplemented = true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        margin: margin == null ? EdgeInsets.all(0) : EdgeInsets.all(20),
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
      ),
    );
  }
}
