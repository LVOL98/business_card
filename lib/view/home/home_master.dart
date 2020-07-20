import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/nav/topnav.dart';
import 'package:temp/view/responsive/device_screen_type.dart';
import 'package:temp/view/responsive/orientation_layout.dart';
import 'package:temp/view/responsive/screen_type_layout.dart';
import 'package:temp/view/responsive/ui_util.dart';

import 'home_mobile.dart';
import 'home_web.dart';

class HomePageMaster extends StatefulWidget {
  @override
  _HomePageMasterState createState() => _HomePageMasterState();
}

class _HomePageMasterState extends State<HomePageMaster> {
  shouldUseDrawer(BuildContext context) {
    if (getDeviceType(MediaQuery.of(context)) == DeviceScreenType.Mobile) {
      return TopNav().getDrawer(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var test = getDeviceType(MediaQuery.of(context));
    print(test);
    return Scaffold(
      drawer: shouldUseDrawer(context),
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
