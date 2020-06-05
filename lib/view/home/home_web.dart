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
      margin: EdgeInsets.fromLTRB(_edge_inset, 0, _edge_inset, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
                margin: EdgeInsets.fromLTRB(_edge_inset, 0, _edge_inset, 0),
                child: _home_content.aboutInfo()),
          ),
        ],
      ),
    );
  }
}
