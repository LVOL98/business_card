import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/buttons/icon_button_text.dart';
import 'package:temp/components/structure/background_structure.dart';

import 'home_content.dart';

class HomePageMobile extends StatefulWidget {
  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    var _edgeInset = MediaQuery.of(context).size.width * 0.05;
    var _homeContent = HomeContent(context, _edgeInset);
    var _cardHeight = MediaQuery.of(context).size.height * 0.25;

    return topPictureBackgroundStructure(
      context,
      'resources/images/test.jpg',
      Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _homeContent.linkdInButton(),
                  _homeContent.gitHubButton(),
                  _homeContent.phoneNumberButton(),
                  _homeContent.eMailButton(),
                ],
              ),
            ),
            _homeContent.aboutInfo(true),
            _homeContent.algorithmsInfo(true),
            _homeContent.webInfo(true),
          ],
        ),
      ),
    );
  }
}
