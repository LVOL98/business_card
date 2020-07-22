import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/structure/mobile_structure.dart';

import 'home_content.dart';

class HomePageMobile extends StatefulWidget {
  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    var _edgeInset = MediaQuery.of(context).size.width * 0.05;
    var _homeContent = HomeContent(context);
    var _cardHeight = MediaQuery.of(context).size.height * 0.25;

    return mobileStructure(
      context,
      'resources/images/test.jpg',
      Container(
        child: Column(
          children: [
            _homeContent.topButtonRow(),
            _homeContent.aboutInfo(true),
            _homeContent.algorithmsInfo(true),
            _homeContent.webInfo(true),
            _homeContent.errorHandlingInTheProgram(true),
          ],
        ),
      ),
    );
  }
}
