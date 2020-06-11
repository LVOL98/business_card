import 'package:flutter/material.dart';

Widget needName(var context, Widget content) {
  return DecoratedBox(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('resources/images/DSC_0015.jpg'),
            fit: BoxFit.fill)),
    child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.transparent,
          expandedHeight: 100,
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.pin,
            background: Container(
              color: Colors.transparent,
              //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('resources/images/DSC_0015.jpg'), fit: BoxFit.cover)),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
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
