import 'package:flutter/material.dart';
import 'package:temp/view/responsive/orientation_layout.dart';
import 'package:temp/view/responsive/screen_type_layout.dart';

class AboutMaster extends StatefulWidget {
  @override
  _AboutMasterState createState() => _AboutMasterState();
}

class _AboutMasterState extends State<AboutMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: null,
          landscape: null,
        ),
        desktop: OrientationLayout(
          portrait: null,
          landscape: null,
        ),
      ),
    );
  }
  }
}