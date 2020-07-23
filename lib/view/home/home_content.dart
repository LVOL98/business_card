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
        notImplementedYetAlert(context);
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
        notImplementedYetAlert(context);
      },
    ),
  ];

  return WebTopNavigation(contentList);
}

linkdInButton() {
  return new IconButtonText(Icons.ac_unit, 'LinkIn',
      url: 'https://www.linkedin.com/in/lukas-vinther-offenberg-7818a3125/',
      iconSize: iconSizeMobile);
}

gitHubButton() {
  return new IconButtonText(
    Icons.ac_unit,
    'GitHub',
    url: 'https://github.com/LVOL98',
    iconSize: iconSizeMobile,
  );
}

phoneNumberButton() {
  return new IconButtonText(
    Icons.call,
    'Phone Number',
    url: '',
    iconSize: iconSizeMobile,
    notImplemented: true,
  );
}

eMailButton() {
  return new IconButtonText(
    Icons.email,
    'E-Mail',
    url: '',
    iconSize: iconSizeMobile,
    notImplemented: true,
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

aboutInfo(BuildContext context, bool mobile) {
  String title = 'About Me';
  String body =
      'COMING: If you want to learn more about me and who I am, you can look into this section, where I tell about what I like to do besides programming';
  String route = '';
  if (mobile) {
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
            indent: 20,
          ),
        ],
      ),
    );
  }
}

algorithmsInfo(BuildContext context, bool mobile) {
  String pictureURL = 'resources/misc/Algo.jpg';
  String title = 'Algorithms';
  String body =
      'COMING: This section will contain example of algoritms, with both vizualisation and use cases';
  if (mobile) {
    return NormalIconListTile(Icons.settings, title, body, 'notworking');
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

webInfo(BuildContext context, bool mobile) {
  String pictureURL = 'resources/misc/web.jpg';
  String title = 'Web Development';
  String body =
      'COMING: This section will contain various stuff that has connection to the web';
  if (mobile) {
    return ReverseIconListTile(Icons.code, title, body, '');
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
  if (mobile) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Error handling',
                style: Theme.of(context).textTheme.headline2,
              )),
          Divider(color: Colors.black, thickness: 2),
          NormalIconListTile(Icons.error, 'Unknown Route',
              'Go to the unknown route', 'Not A Route'),
        ],
      ),
    );
  }
}
