import 'package:flutter/cupertino.dart';
import 'package:temp/components/structure/background_structure.dart';

import 'home_content.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    var _edgeInset = MediaQuery.of(context).size.width * 0.05;
    var _homeContent = HomeContent(context);
    var _cardWidth = MediaQuery.of(context).size.width * 0.45;

    return topPictureBackgroundStructure(
      context,
      'resources/images/test.jpg',
      Container(
        child: Column(
          children: [
            _homeContent.aboutInfo(false),
            //_homeContent.algorithmsInfo(false),
            _homeContent.webInfo(false),
          ],
        ),
      ),
    );
  }
}
