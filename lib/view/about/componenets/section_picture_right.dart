import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SectionPictureLeft extends StatelessWidget {
  String _description;
  var _logo;

  SectionPictureLeft(this._description, this._logo);

  @override
  Widget build(BuildContext context) {
    return new Row(children: [
      Text(_description),
      FlutterLogo(),
    ],);
  }
}