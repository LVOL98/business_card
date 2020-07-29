import 'package:flutter/material.dart';

class TopPicture extends StatelessWidget {
  final String title;
  final String text;

  TopPicture(this.title, this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Image.asset(
            'resources/misc/placeholder.png',
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
