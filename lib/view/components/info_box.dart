import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBox {
  standardHomeInfo(String infoText, String buttonText, var inset_bottom) {
    return Column(
      children: [
        Text(infoText),
        FlutterLogo(
          size: 100,
        ),
        RaisedButton(
          onPressed: () {},
          child: Text(buttonText),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, inset_bottom, 0, 0),
        ),
      ],
    );
  }
}
