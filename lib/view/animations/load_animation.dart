import 'package:flutter/material.dart';

class LoadAnimations {
  stadardCircleLoad(var context, String text) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: Text('test'),
            contentPadding: EdgeInsets.all(100),
            children: [
              CircularProgressIndicator(),
            ],
          );
        });
  }
}
