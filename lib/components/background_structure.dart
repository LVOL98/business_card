import 'package:flutter/material.dart';

/// Creates a widget which at the top have a userdefined picture, 
/// with a decoratedbox on top, which will contain the content
/// 
/// The [context] variable is needed to set the background color, 
/// such that is follows the apps color which should be defined in ThemeData
/// 
/// [content] is the content that should go in the main body
Widget topPictureBackgroundStructure(var context, String pictureURL, Widget content,) {
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        alignment: Alignment.topCenter,
        image: AssetImage(pictureURL),
      ),
    ),
    child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(20),
                    right: Radius.circular(20),
                  ),
                ),
                child: content,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

//https://stackoverflow.com/questions/56204912/flutter-scrollable-stack-with-height-greater-than-screen-height
