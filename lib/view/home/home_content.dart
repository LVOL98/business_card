import 'package:flutter/material.dart';
import 'package:temp/components/buttons/icon_button_text.dart';
import 'package:temp/components/cards/info_card.dart';
import 'package:temp/components/cards/normal_icon_listtile.dart';
import 'package:temp/components/cards/one_line_icon_card.dart';
import 'package:temp/components/cards/reverse_icon_listtile.dart';
import 'package:temp/components/dialogs/not_implemented.dart';
import 'package:temp/components/nav/web_top_navigation.dart';

class HomeContent {
  var _context;
  EdgeInsets _inset = EdgeInsets.all(20);
  double iconSizeMobile = 35.0;

  HomeContent(this._context);

  Widget webAppBar() {
    List<Widget> contentList = [
      FlatButton(
        child: Text(
          'About Me',
          style: Theme.of(_context).textTheme.bodyText1,
        ),
        onPressed: () {/* TODO */},
      ),
      FlatButton(
        child: Text(
          'Algorithms',
          style: Theme.of(_context).textTheme.bodyText1,
        ),
        onPressed: () {/* TODO */},
      ),
      FlatButton(
        child: Text(
          'Web Development',
          style: Theme.of(_context).textTheme.bodyText1,
        ),
        onPressed: () {/* TODO */},
      ),
      FlatButton(
        child: Text(
          'Contact Information',
          style: Theme.of(_context).textTheme.bodyText1,
        ),
        onPressed: () {/* TODO */},
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
      url: '',
      iconSize: iconSizeMobile,
      notImplemented: true,
    );
  }

  phoneNumberButton() {
    return new IconButtonText(Icons.call, 'Phone Number',
        url: '', iconSize: iconSizeMobile);
  }

  eMailButton() {
    return new IconButtonText(Icons.email, 'E-Mail',
        url: '', iconSize: iconSizeMobile);
  }

  topButtonRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          linkdInButton(),
          gitHubButton(),
          phoneNumberButton(),
          eMailButton(),
        ],
      ),
    );
  }

  aboutInfo(bool mobile) {
    String pictureURL = 'resources/misc/ITU2.jpg';
    IconData iconData = Icons.perm_contact_calendar;
    String title = 'About Me';
    String body =
        'COMING: If you want to learn more about me and who I am, you can look into this section, where I tell about what I like to do besides programming';
    String route = '';
    if (mobile) {
      return Container(
        margin: _inset,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: Theme.of(_context).textTheme.headline2,
            ),
            Text(
              body,
              style: Theme.of(_context).textTheme.bodyText1,
            ),
            ButtonBar(
              children: [
                FlatButton(
                  child: Text(
                    'Read More >',
                    style: TextStyle(
                        color: Theme.of(_context).colorScheme.secondary),
                  ),
                  onPressed: () => route == '' || route == null
                      ? notImplementedYetAlert(_context)
                      : Navigator.pushNamed(_context, route),
                ),
              ],
            ),
            Divider(color: Colors.black, thickness: 2),
          ],
        ),
      );
    } else {
      //return normalListTile(_context, pictureURL, title, body);
    }
  }

  algorithmsInfo(bool mobile) {
    String pictureURL = 'resources/misc/Algo.jpg';
    String title = 'Algorithms';
    String body =
        'COMING: This section will contain example of algoritms, with both vizualisation and use cases';
    if (mobile) {
      return NormalIconListTile(Icons.settings, title, body, 'notworking',
          margin: _inset);
    } else {
      return InfoCard(
        pictureURL,
        title,
        body,
        '',
        cardWidth: MediaQuery.of(_context).size.width * 0.48,
        notImplemented: true,
      );
    }
  }

  webInfo(bool mobile) {
    String pictureURL = 'resources/misc/web.jpg';
    String title = 'Web Development';
    String body =
        'COMING: This section will contain various stuff that has connection to the web';
    if (mobile) {
      return ReverseIconListTile(Icons.code, title, body, '',
          margin: _inset);
    } else {
      return InfoCard(
        pictureURL,
        title,
        body,
        '',
        cardWidth: MediaQuery.of(_context).size.width * 0.48,
        notImplemented: true,
      );
    }
  }

  errorHandlingInTheProgram(bool mobile) {
    if (mobile) {
      return Container(
        margin: _inset,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: _inset,
                child: Text(
                  'Error handling',
                  style: Theme.of(_context).textTheme.headline2,
                )),
            Padding(
                padding: _inset,
                child: Divider(color: Colors.black, thickness: 2)),
            NormalIconListTile(Icons.error, 'Unknown Route',
                'Go to the unknown route', 'Not A Route'),
            OneLineIconCard.placeholder(),
          ],
        ),
      );
    }
  }
}
