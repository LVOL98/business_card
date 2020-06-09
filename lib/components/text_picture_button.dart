import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget topTextPictureButton(var context, String infoText, String buttonText,
    var inset, String navigateTo) {
  return Column(
    children: [
      Text(infoText),
      FlutterLogo(
        size: 100,
      ),
      RaisedButton(
        onPressed: () => Navigator.pushNamed(context, navigateTo),
        child: Text(buttonText),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(inset, 0, inset, inset),
      ),
    ],
  );
}
