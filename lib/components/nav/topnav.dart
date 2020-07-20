import 'package:flutter/material.dart';

class TopNav {
  getAppBar() {
    return AppBar(
      title: Text('Test'),
    );
  }

  getDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.secondary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('About Me'),
              /* onTap: () {
                //Navigator.pop(context);
              }, */
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Algorithms'),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit),
              title: Text('Web Development'),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Contact Information'),
            ),
          ],
        ),
      ),
    );
  }
}
