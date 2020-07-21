import 'package:flutter/material.dart';

/// Creates the top navigation on web, in which the content is the 
/// widgets displayed from left to right horizontally on the bar
Widget webTopNavigation(BuildContext context, List<Widget> content) {
  return SliverAppBar(
    expandedHeight: MediaQuery.of(context).size.height * 0.05,
    flexibleSpace: FlexibleSpaceBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (Widget item in content)
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 0), child: item), // TODO: find a better solution
        ],
      ),
    ),
  );
}
