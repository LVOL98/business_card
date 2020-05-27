import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/home_mobile.dart';

import 'components/topnav.dart';

class HomePageMaster extends StatefulWidget {
  @override
  _HomePageMasterState createState() => _HomePageMasterState();
}

class _HomePageMasterState extends State<HomePageMaster> {
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
            // TODO: web style
          } else {
            return HomePageMobile();
          }
        },
      ),
    );
  }
}
