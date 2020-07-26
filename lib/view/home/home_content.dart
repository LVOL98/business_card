import 'package:flutter/material.dart';
import 'package:temp/components/buttons/icon_button_text.dart';
import 'package:temp/components/cards/info_card.dart';
import 'package:temp/components/cards/normal_icon_listtile.dart';
import 'package:temp/components/cards/reverse_icon_listtile.dart';
import 'package:temp/components/dialogs/not_implemented.dart';
import 'package:temp/components/nav/web_top_navigation.dart';

double iconSizeMobile = 35.0;

Widget webAppBar(BuildContext context) {
  List<Widget> contentList = [
    FlatButton(
      child: Text(
        'About Me',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      onPressed: () {
        notImplementedYetAlert(context);
      },
    ),
    FlatButton(
      child: Text(
        'Algorithms',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/home/algorithms');
      },
    ),
    FlatButton(
      child: Text(
        'Web Development',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      onPressed: () {
        notImplementedYetAlert(context);
      },
    ),
    FlatButton(
      child: Text(
        'Contact Information',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  ];

  return WebTopNavigation(contentList);
}

linkdInButton() {
  return new IconButtonText(
      IconData(0xf30c, fontFamily: 'LinkdInLogo', fontPackage: null), 'LinkdIn',
      url: 'https://www.linkedin.com/in/lukas-vinther-offenberg-7818a3125/',
      iconSize: iconSizeMobile);
}

gitHubButton() {
  return new IconButtonText(
    IconData(0xf056, fontFamily: 'GitHubLogo', fontPackage: null),
    'GitHub',
    url: 'https://github.com/LVOL98',
    iconSize: iconSizeMobile,
  );
}

phoneNumberButton() {
  return new IconButtonText(
    Icons.call,
    'Phone Number',
    route: '/',
    iconSize: iconSizeMobile,
  );
}

eMailButton() {
  return new IconButtonText(
    Icons.email,
    'E-Mail',
    url: '',
    iconSize: iconSizeMobile,
  );
}

topButtonRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      linkdInButton(),
      gitHubButton(),
      phoneNumberButton(),
      eMailButton(),
    ],
  );
}

aboutInfo(BuildContext context) {
  String title = 'About Me';
  String body =
      'COMING: If you want to learn more about me and who I am, you can look into this section, where I tell about what I like to do besides programming';
  String route = '';
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.center,
        ),
        ButtonBar(
          children: [
            FlatButton(
              child: Text(
                'Read More >',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.secondary),
              ),
              onPressed: () => route == '' || route == null
                  ? notImplementedYetAlert(context)
                  : Navigator.pushNamed(context, route),
            ),
          ],
        ),
        Divider(
          color: Colors.black,
          thickness: 2,
        ),
      ],
    ),
  );
}

algorithmsInfo(BuildContext context, bool mobile) {
  String pictureURL = 'resources/misc/Algo.jpg';
  String title = 'Algorithms';
  String body = 'COMING: about algorithms';
  if (mobile) {
    return NormalIconListTile(
      Icons.settings,
      title,
      body,
      '/home/algorithms',
    );
  } else {
    return InfoCard(
      pictureURL,
      title,
      body,
      '/home/algorithms',
      cardWidth: MediaQuery.of(context).size.width * 0.48,
    );
  }
}

webInfo(BuildContext context, bool mobile) {
  String pictureURL = 'resources/misc/web-development.jpg';
  String title = 'Web Development';
  String body = 'COMING: about web development';
  if (mobile) {
    return NormalIconListTile(
      Icons.code,
      title,
      body,
      '',
      notImplemented: true,
    );
  } else {
    return InfoCard(
      pictureURL,
      title,
      body,
      '',
      cardWidth: MediaQuery.of(context).size.width * 0.48,
      notImplemented: true,
    );
  }
}

errorHandlingInTheProgram(BuildContext context, bool mobile) {
  String pictureURLUnknown = 'resources/misc/placeholder.png';
  String unknownRouteTitle = 'Unknown Route';
  String unknownRouteBody = 'Go to the unknown route';
  String unknownRoute = 'Not a Route';

  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Error handling',
            style: Theme.of(context).textTheme.headline2,
          ),
        ),
        Divider(color: Colors.black, thickness: 2),
        mobile == true
            ? NormalIconListTile(
                Icons.error, unknownRouteTitle, unknownRouteBody, unknownRoute)
            : InfoCard(
                pictureURLUnknown,
                unknownRouteTitle,
                unknownRouteBody,
                unknownRoute,
              ),
      ],
    ),
  );
}
