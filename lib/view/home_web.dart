import 'package:flutter/cupertino.dart';

import 'home_content.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    var _edge_inset = MediaQuery.of(context).size.width * 0.05;
    var _home_content = HomeContent(_edge_inset);

    return Container(
      padding: EdgeInsets.all(_edge_inset),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: _home_content.algorithmsInfo()),
          Expanded(child:_home_content.webInfo()),
        ],
      ),
    );
  }
}