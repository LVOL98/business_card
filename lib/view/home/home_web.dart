import 'package:flutter/material.dart';
import 'package:temp/components/cards/info_card.dart';
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
        webAppBar(
          context,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
                child: topButtonRow(),
              ),
              Image.asset(
                'resources/images/surfing-face.jpg',
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height * 0.19,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: aboutInfo(context),
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  algorithmsInfo(context, false),
                  webInfo(context, false),
                ],
              ),
              Wrap(
                children: [
                  errorHandlingInTheProgram(context, false),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
