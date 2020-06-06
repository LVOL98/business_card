import 'package:flutter/material.dart';

class TopNav {
  getAppBar() {
    return AppBar(
      title: Text('Test'),
    );
  }

  getDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text('Header'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('About Me'),
            /* onTap: () {
              //Navigator.pop(context);
            }, */
          ),
        ],
      ),
    );
  }
}
