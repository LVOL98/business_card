import 'package:flutter/material.dart';

class LeftPicture extends StatelessWidget {
  final String title;
  final String body;

  LeftPicture(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset('resources/misc/placeholder.png', width: MediaQuery.of(context).size.width * 0.25,),
      title: Text(title),
      subtitle: Text(body),
    );
  }
}