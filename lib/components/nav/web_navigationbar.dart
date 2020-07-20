import 'package:flutter/material.dart';

Widget webNavigationBar(BuildContext context, List<Widget> content) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * 0.05,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (Widget item in content) item
          ],
        ),
      ),
    );
  }