import 'package:flutter/material.dart';

class TopNav {
  getAppBar() {
    return AppBar(
      title: Text('TBA'),
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
        ],
      ),
    );
  }
}
