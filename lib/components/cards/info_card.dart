import 'package:flutter/material.dart';
import 'package:temp/components/dialogs/not_implemented.dart';

/// Creates a card with a defined picture as backgrind, Which
/// then contains a title togheter with text and a text prompt
/// to read more
///
/// The [route] is required unless [notImplemented] is set to true,
/// if the route isn't accesible, the program will open the
/// unknownRoute
///
/// A placeholder constructor is given, if the user wants to test the
/// use of the card before implementing
class InfoCard extends StatelessWidget {
  String pictureURL;
  String title;
  String body;
  String route;
  double imageWidth;
  double imageHeight;
  double cardWidth;
  double cardHeight;
  double margin;
  bool notImplemented;

  InfoCard(this.pictureURL, this.title, this.body, this.route,
      {this.imageWidth,
      this.imageHeight,
      this.cardWidth,
      this.cardHeight,
      this.margin,
      this.notImplemented});

  InfoCard.placeHolder() {
    this.pictureURL = 'resources/misc/placeholder.png';
    this.title = 'Placeholder';
    this.body = 'This is a placeholder';
    this.route = '';
    notImplemented = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        shadowColor: Colors.black,
        margin: margin == null ? EdgeInsets.all(15) : margin,
        child: InkWell(
          onTap: () {
            if (notImplemented == true) {
              notImplementedYetAlert(context);
            } else {
              Navigator.pushNamed(context, route);
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                pictureURL,
                width: imageWidth == null
                    ? MediaQuery.of(context).size.width * 1
                    : imageWidth,
                height: imageHeight == null
                    ? MediaQuery.of(context).size.height * 0.15
                    : imageHeight,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      body,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              ButtonBar(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Read More >',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
