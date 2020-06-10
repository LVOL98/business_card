import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/topnav.dart';
import 'package:temp/view/responsive/orientation_layout.dart';
import 'package:temp/view/responsive/screen_type_layout.dart';

import 'home_mobile.dart';
import 'home_web.dart';

class HomePageMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav().getAppBar(),
      drawer: TopNav().getDrawer(),
      body: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: HomePageMobile(),
          landscape: HomePageMobile(),
        ),
        desktop: OrientationLayout(
          portrait: HomePageWeb(),
          landscape: HomePageWeb(),
        ),
      ),
    );
  }
}