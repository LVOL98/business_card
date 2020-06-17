import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/background_mobile.dart';

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

    return needName(
      context,
      Container(
        padding: EdgeInsets.all(_edgeInset),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _homeContent.aboutInfo(height: _cardHeight),
            _homeContent.algorithmsInfo(height: _cardHeight),
            _homeContent.webInfo(height: _cardHeight),
            _homeContent.webInfo(height: _cardHeight),
          ],
        ),
      ),
    );
  }
}
