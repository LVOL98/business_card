import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/structure/mobile_page_structure.dart';

import 'home_content.dart';

class HomePageMobile extends StatefulWidget {
  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    return MobilePageStructure(
      'resources/images/test.jpg',
      Container(
        child: Column(
          children: [
            topButtonRow(),
            aboutInfo(context, true),
            algorithmsInfo(context, true),
            webInfo(context, true),
            errorHandlingInTheProgram(context, true),
          ],
        ),
      ),
    );
  }
}
