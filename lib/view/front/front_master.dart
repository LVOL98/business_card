import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/front/front_content.dart';
import 'package:temp/view/home/home_master.dart';

class FrontPageMaster extends StatefulWidget {
  @override
  _FrontPageMasterState createState() => _FrontPageMasterState();
}

class _FrontPageMasterState extends State<FrontPageMaster> {
  FrontContent _frontContent = new FrontContent();

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
              ), // TODO: font styles
              Text(
                'Software Development Student',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'IT University of Copenhagen',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              _frontContent.standardSquareBox(
                context,
                Icons.mail,
                'lukas98@live.dk',
              ),
              _frontContent.standardSquareBox(
                context,
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
