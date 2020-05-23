import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/components/topnav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNav().getAppBar(),
      body: SafeArea(child: Text('yay')),
    );
  }
}