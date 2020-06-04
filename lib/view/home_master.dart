import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/topnav.dart';

class HomePageMaster extends StatefulWidget {
  @override
  _HomePageMasterState createState() => _HomePageMasterState();
}

class _HomePageMasterState extends State<HomePageMaster> {
  bool isLargeScreen;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav().getAppBar(),
      drawer: TopNav().getDrawer(),
      body: Center(
        child: Text('More to come!'),
      ),
    );
  }
}
