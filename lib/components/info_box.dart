import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoBox {
  standardHomeInfo(String infoText, String buttonText, var inset) {
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
          padding: EdgeInsets.fromLTRB(inset, 0, inset, inset),
        ),
      ],
    );
  }
}
