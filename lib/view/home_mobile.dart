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
    var _edge_inset = MediaQuery.of(context).size.width * 0.05;

    return Scaffold(
      appBar: TopNav().getAppBar(),
      drawer: TopNav().getDrawer(),
      body: Container(
        padding: EdgeInsets.all(_edge_inset),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
                'This will be a paragrpah about my knowledge of algorithms. This will be a paragrpah about my knowledge of algorithms. This will be a paragrpah about my knowledge of algorithms. This will be a paragrpah about my knowledge of algorithms'),
            FlutterLogo(
              size: 100,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Go To Algorithms'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, _edge_inset, 0, 0),
            ),
            Text(
                'This will be a paragrpah about my knowledge of web development. This will be a paragrpah about my knowledge of web development. This will be a paragrpah about my knowledge of web development. This will be a paragrpah about my knowledge of web development'),
            FlutterLogo(
              size: 100,
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Go To Web Development'),
            ),
          ],
        ),
      ),
    );
  }
}
