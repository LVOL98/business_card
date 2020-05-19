import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
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
                style: Theme.of(context).textTheme.headline1,
              ), // TODO: font styles
              Text('Software Development Student'),
              Text('IT University of Copenhagen'),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 20,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(
                      width: 10,
                    ),
                    Text('lukas98@live.dk'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 20,
                      ),
                    ]),
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 10,
                    ),
                    Text('+45 24 78 59 44'),
                  ],
                ),
              ),
              RaisedButton(
                onPressed: () => {},
                child: Text('Let me show you what I can do!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
