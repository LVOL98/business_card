import 'package:flutter/material.dart';

notImplementedYetAlert(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(
          'Not Implemented Yet',
          style: TextStyle(color: Colors.white),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('This feature is currently in development'),
              Text('Please check back later!'),
            ],
          ),
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Understood',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
