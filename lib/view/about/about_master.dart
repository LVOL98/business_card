import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/topnav.dart';
import 'package:temp/view/about/about_mobile.dart';

class AboutPageMaster extends StatefulWidget {
  @override
  _AboutPageMasterState createState() => _AboutPageMasterState();
}

class _AboutPageMasterState extends State<AboutPageMaster> {
  bool isLargeScreen;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav().getAppBar(),
      drawer: TopNav().getDrawer(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery.of(context).size.width > 600) {
            isLargeScreen = true;
          } else {
            isLargeScreen = false;
          }

          if (isLargeScreen) {
            return AboutPageMobile();
          } else {
            return AboutPageMobile();
          }
        },
      ),
    );
  }
}