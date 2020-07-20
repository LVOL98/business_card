import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/structure/background_structure.dart';

import 'home_content.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    var _homeContent = HomeContent(context);

    return CustomScrollView(
      slivers: [
        _homeContent.webAppBar()
      ],
    );

    return Container(
        child: Column(
          children: [
            _homeContent.topButtonRow(),
            _homeContent.aboutInfo(true),
            Wrap(
              children: [
                _homeContent.algorithmsInfo(false),
                _homeContent.webInfo(false),
              ],
            ),
          ],
        ),
      );
  }
}
