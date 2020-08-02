import 'package:flutter/material.dart';

/// Creates a widget which at the top have a userdefined picture,
/// with a decoratedbox on top, which will contain the content
///
/// The [context] variable is needed to set the background color,
/// such that is follows the apps color which should be defined in ThemeData
///
/// [content] is the content that should go in the main body
///
/// The placeholder constructor lets the user get a preview of
/// how to page would look
class MobilePageStructure extends StatelessWidget {
  String pictureURL;
  Widget content;
  Color topRightIconColor;

  MobilePageStructure(this.pictureURL, this.content, {this.topRightIconColor});

  MobilePageStructure.placeholder() {
    this.pictureURL = 'resources/misc/ITU2.jpg';
    this.content = Column(
      children: [
        Text('Some placeholder text'),
        Text('Some more placeholder text')
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
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
            iconTheme: IconThemeData(color: topRightIconColor),
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
}
