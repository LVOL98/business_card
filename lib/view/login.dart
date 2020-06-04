import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/home_master.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  

  @override
  Widget build(BuildContext context) {
    var _edgeInset;
    if (MediaQuery.of(context).size.width > 1200) {
      _edgeInset = 300;
    } else if (MediaQuery.of(context).size.width > 1000) {
      _edgeInset = 250;
    } else {
      _edgeInset = 15;
    }

    return Scaffold(
      body: Center(

        //margin: EdgeInsets.all(_edgeInset),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Container(
                width: 450,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
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
                width: 450,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: new BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black,
                        blurRadius: 2,
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
                onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageMaster())) // TODO: aniumations and prettier code
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
