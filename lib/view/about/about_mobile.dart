import 'package:flutter/material.dart';
import 'package:temp/components/structure/mobile_page_structure.dart';
import 'package:temp/view/about/about_content.dart';

class AboutMobile extends StatefulWidget {
  @override
  _AboutMobileState createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    return new MobilePageStructure(
      'resources/images/surfing-small.jpg',
      SafeArea(
        child: Column(
          children: [
            martialArts(),
          ],
        ),
      ),
    );
  }
}
