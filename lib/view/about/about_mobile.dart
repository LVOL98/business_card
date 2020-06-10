import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/text_picture.dart';
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
          Text(
            content['Initial Description'],
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
          pictureBack(context, content['Education-Picture'], content['Education-Text']),
        ],
      ),
    );
  }
}
