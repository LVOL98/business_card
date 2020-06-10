import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/view/about/componenets/section_picture_right.dart';

final Map<String, Widget> content = <String, Widget>{
  'Initial Description': new Container(
    child: Column(
      children: [
        Text(
          'Hi! and again thanks for taking your time to check my \'business card\'',
          //style: Theme.of(context).textTheme.headline1,
        ),
        Text(
            'Atm I\'m studying Software Development at the IT University of Copenhagen (aka. ITU), where I have just finished the first year of the bachelors degree'),
      ],
    ),
  ),
  'Education': new SectionPictureLeft('information about education', null),
};
