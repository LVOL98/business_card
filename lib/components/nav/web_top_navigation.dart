import 'package:flutter/material.dart';

/// Creates the top navigation on web, in which the content is the
/// widgets displayed from left to right horizontally on the bar
///
/// It's placeholder constructor demostrates how to navigation would look
class WebTopNavigation extends StatelessWidget {
  List<Widget> content;

  WebTopNavigation(this.content);

  WebTopNavigation.placeholder() {
    this.content = [
      Text('Some placeholder text'),
      Text('Some more placeholder text')
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Container(),
      expandedHeight: MediaQuery.of(context).size.height * 0.05,
      flexibleSpace: FlexibleSpaceBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (Widget item in content)
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                  child: item), // TODO: find a better solution
          ],
        ),
      ),
    );
  }
}
