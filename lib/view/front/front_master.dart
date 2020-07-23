import 'package:flutter/material.dart';
import 'package:temp/components/cards/one_line_icon_card.dart';

class FrontPageMaster extends StatefulWidget {
  @override
  _FrontPageMasterState createState() => _FrontPageMasterState();
}

class _FrontPageMasterState extends State<FrontPageMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('resources/images/avatar/me.png'),
              ),
              Text(
                'Lukas Vinther Offenberg Larsen',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Software Development Student',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'IT University of Copenhagen',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              OneLineIconCard(
                Icons.mail,
                'lukas98@live.dk',
              ),
              OneLineIconCard(
                Icons.phone,
                '+45 24 78 59 44',
              ),
              RaisedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, '/home'),
                },
                child: Text('Let me show you what I can do!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
