import 'package:flutter/material.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates the drawer used in the mobile version
class MobileTopNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('About Me'),
              onTap: () {
                notImplementedYetAlert(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Algorithms'),
              onTap: () {
                notImplementedYetAlert(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.code),
              title: Text('Web Development'),
              onTap: () {
                notImplementedYetAlert(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Contact Information'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
