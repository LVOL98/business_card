import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/about/about_content.dart';

class AboutPageMobile extends StatefulWidget {
  @override
  _AboutPageMobileState createState() => _AboutPageMobileState();
}

class _AboutPageMobileState extends State<AboutPageMobile> {
  @override
  Widget build(BuildContext context) {
    var _edgeInset = MediaQuery.of(context).size.width * 0.05;

    return Container(
      padding: EdgeInsets.all(_edgeInset),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          content['Initial Description'],
          content['Education'],
        ],
      ),
    );
  }
}
