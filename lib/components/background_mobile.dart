import 'package:flutter/material.dart';


Widget needName(var context, Widget content) {
  return DecoratedBox(
    decoration: BoxDecoration(
      image: DecorationImage(
        alignment: Alignment.topCenter,
        image: AssetImage('resources/images/test.jpg'),
        //fit: BoxFit.fitHeight,
      ),
    ),
    child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            /* background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('resources/images/test.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ), */
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
                    )),
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