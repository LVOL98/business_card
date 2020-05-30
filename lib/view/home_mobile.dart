import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/components/topnav.dart';
import 'package:temp/view/home_content.dart';

class HomePageMobile extends StatefulWidget {
  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    var _home_content = HomeContent();
    var _edge_inset = MediaQuery.of(context).size.width * 0.05;

    return Container(
      padding: EdgeInsets.all(_edge_inset),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _home_content.algorithmsInfo(),
          _home_content.webInfo(),
        ],
      ),
    );
  }
}
