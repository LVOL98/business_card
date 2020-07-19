import 'package:flutter/material.dart';

Widget iconButtonText(var context, IconData icon, String description) {
  return Container(
    child: Column(
      children: [
        Center(
          child: Ink(
            decoration: ShapeDecoration(
                // TODO: shape decoration is not working
                color: Theme.of(context).colorScheme.secondary,
                shape: CircleBorder()),
            child: IconButton(
              icon: Icon(
                icon,
                color: Theme.of(context).colorScheme.secondary,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    ),
  );
}
