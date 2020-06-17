import 'package:flutter/material.dart';
import 'package:temp/routes.dart';
import 'package:temp/theme/style.dart';
import 'package:temp/view/front/front_master.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppStyle.lighTheme,
      title: 'LVOL',
      initialRoute: '/',
      routes: routes,
      //home: FrontPageMaster(), // TODO: is this needed
    );
  }
}

void main() => runApp(Main());