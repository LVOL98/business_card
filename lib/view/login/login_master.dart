import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/home/home_master.dart';
import 'package:temp/view/login/login_content.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  LoginContent _loginContent = new LoginContent();

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
              _loginContent.standardSquareBox(
                context,
                Icons.mail,
                'lukas98@live.dk',
              ),
              _loginContent.standardSquareBox(
                context,
                Icons.phone,
                '+45 24 78 59 44',
              ),
              RaisedButton(
                onPressed: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePageMaster())) // TODO: aniumations and prettier code
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
