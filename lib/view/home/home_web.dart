import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/structure/mobile_page_structure.dart';

import 'home_content.dart';

class HomePageWeb extends StatefulWidget {
  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  Widget build(BuildContext context) {
    
    return CustomScrollView(
      slivers: [
        webAppBar(context, ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 20), child: 
              topButtonRow()),
              Image.asset(
                'resources/images/test.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.19,
              ),
              aboutInfo(context, true),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  algorithmsInfo(context, false),
                  webInfo(context, false),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
