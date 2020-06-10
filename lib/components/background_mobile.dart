import 'package:flutter/material.dart';

Widget needName(@required var context, Widget content) {
  return Container(
    child: Stack(
      children: [
        Image.asset('resources/images/DSC_0015.jpg'),
        SizedBox.expand(
          child: Container(
            margin: EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              children: [content],
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(20),
                topRight: const Radius.circular(20),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
