import 'package:flutter/material.dart';
import 'package:temp/view/algorithms/algorithms_mobile.dart';
import 'package:temp/view/responsive/orientation_layout.dart';
import 'package:temp/view/responsive/screen_type_layout.dart';

class AlgorithmPageMaster extends StatefulWidget {
  @override
  _AlgorithmPageMasterState createState() => _AlgorithmPageMasterState();
}

class _AlgorithmPageMasterState extends State<AlgorithmPageMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenTypeLayout(
        mobile: OrientationLayout(
          portrait: AlgorithmPageMobile(),
          landscape: AlgorithmPageMobile(),
        ),
        desktop: OrientationLayout(
          portrait: AlgorithmPageMobile(),
          landscape: AlgorithmPageMobile(),
        ),
      ),
    );
  }
}