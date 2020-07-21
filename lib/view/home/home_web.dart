import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/structure/mobile_structure.dart';

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
        _homeContent.webAppBar(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20), child: 
              _homeContent.topButtonRow()),
              Image.asset(
                'resources/images/test.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.19,
              ),
              /* Container(
                  child: Text('image'),
                  color: Colors.black), */ // TODO: place an image
              _homeContent.aboutInfo(true),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  _homeContent.algorithmsInfo(false),
                  _homeContent.webInfo(false),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
