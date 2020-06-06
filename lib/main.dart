import 'package:flutter/material.dart';
import 'package:temp/theme/style.dart';
import 'package:temp/view/login/login_master.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppStyle.lighTheme,
      title: 'TODO',
      home: LoginPage(), // TODO: problably shouldn't be home
    );
  }
}

void main() => runApp(Main());

// Colors
// https://coolors.co/3a405a-4d536b-685044-776155-4b9980-81b29a-a3d1bd-e07a5f-e68f73
