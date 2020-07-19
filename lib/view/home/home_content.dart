import 'package:flutter/material.dart';
import 'package:temp/components/buttons/icon_button_text.dart';
import 'package:temp/components/cards/info_card.dart';
import 'package:temp/components/cards/normal_icon_listtile.dart';
import 'package:temp/components/cards/reverse_icon_listtile.dart';
import 'package:temp/components/cards/standard_card.dart';
import 'package:temp/components/dialogs/not_implemented.dart';
import 'package:temp/exceptions/route_exception.dart';

class HomeContent {
  var _context;
  EdgeInsets _inset = EdgeInsets.all(20);
  double iconSizeMobile = 35.0;

  HomeContent(this._context);

  linkdInButton() {
    return iconButtonText(_context, Icons.ac_unit, 'LinkIn',
        'https://www.linkedin.com/in/lukas-vinther-offenberg-7818a3125/',
        iconSize: iconSizeMobile);
  }

  gitHubButton() {
    return iconButtonText(_context, Icons.ac_unit, 'GitHub', '',
        iconSize: iconSizeMobile);
  }

  phoneNumberButton() {
    return iconButtonText(_context, Icons.call, 'Phone Number', '',
        iconSize: iconSizeMobile);
  }

  eMailButton() {
    return iconButtonText(_context, Icons.email, 'E-Mail', '',
        iconSize: iconSizeMobile);
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
    String title = 'A Headline';
    String body = 'COMING: A section that summarize who I am';
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

  algorithmsInfo(bool mobile, {var width, var height}) {
    String pictureURL = 'resources/misc/Algo.jpg';
    String title = 'Algorithms';
    String body =
        'COMING: This section will contain example of algoritms, with both vizualisation and use cases';
    if (mobile) {
      try {
        return normalIconListTile(_context, Icons.settings, title, body, '',
            margin: _inset);
      } on RouteException {
        print('found');
      }
    } else {
      //normalListTile(_context, pictureURL, title, body);
    }
  }

  webInfo(bool mobile, {var width, var height}) {
    String pictureURL = 'resources/misc/web.jpg';
    String title = 'Web Development';
    String body =
        'COMING: This section will contain various stuff that has connection to the web';
    if (mobile) {
      return reverseIconListTile(_context, Icons.code, title, body, '',
          margin: _inset);
    } else {
      //return normalListTile(_context, pictureURL, title, body);
    }
  }
}
