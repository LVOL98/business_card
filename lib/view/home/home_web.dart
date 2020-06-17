import 'package:flutter/cupertino.dart';

import 'home_content.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    var _edgeInset = MediaQuery.of(context).size.width * 0.05;
    var _homeContent = HomeContent(context, _edgeInset);
    var _cardWidth = MediaQuery.of(context).size.width * 0.45;

    return Container(
      padding: EdgeInsets.all(_edgeInset),
      child: Column(
        children: [
          Row(
            children: [
              _homeContent.aboutInfo(width: _cardWidth),
              _homeContent.algorithmsInfo(width: _cardWidth),
            ],
          ),
          Row(
            children: [
              _homeContent.webInfo(width: _cardWidth),
              _homeContent.webInfo(width: _cardWidth),
            ],
          )
        ],
      ),
    );
  }
}
