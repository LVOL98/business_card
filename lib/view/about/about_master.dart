import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/topnav.dart';
import 'package:temp/view/about/about_mobile.dart';
import 'package:temp/view/responsive/orientation_layout.dart';
import 'package:temp/view/responsive/screen_type_layout.dart';

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
      body: ScreenTypeLayout(
          mobile: OrientationLayout(
        portrait: AboutPageMobile(),
        landscape: AboutPageMobile(),
      )),
    );
  }
}
