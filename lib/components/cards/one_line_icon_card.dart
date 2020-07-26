import 'package:flutter/material.dart';

/// Creates a box with a icon on the left, with some text next to it
///
/// A placeholder is given via the .placeholder constructor
class OneLineIconCard extends StatelessWidget {
  IconData iconData;
  String text;

  OneLineIconCard(this.iconData, this.text);

  OneLineIconCard.placeholder() {
    this.iconData = Icons.ac_unit;
    this.text = 'This is a placeholder';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Icon(iconData),
          SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
