import 'package:flutter/material.dart';
import 'package:temp/components/cards/info_card.dart';
import 'package:temp/components/cards/normal_icon_listtile.dart';
import 'package:temp/components/cards/standard_card.dart';

class HomeContent {
  var _context;
  var _insetBottom;

  HomeContent(this._context, this._insetBottom);

  aboutInfo(bool mobile, {var width, var height}) {
    String pictureURL = 'resources/misc/ITU2.jpg';
    IconData iconData = Icons.perm_contact_calendar;
    String title = 'A Headline';
    String body = 'COMING: A section that summarize who I am';
    String route = '';
    if (mobile) {
      return normalIconListTile(_context, iconData, title, body, route);
      return infoCard(
        _context,
        pictureURL,
        title,
        body,
        '',
        widthSize: width,
        heightSize: height,
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
      return infoCard(
        _context,
        pictureURL,
        title,
        body,
        '',
        widthSize: width,
        heightSize: height,
      );
    } else {
      //normalListTile(_context, pictureURL, title, body);
    }
  }

  webInfo(bool mobile, {var width, var height}) {
    String pictureURL = 'resources/misc/web.jpg';
    String title = 'Web Development (Front end)';
    String body =
        'COMING: This section will contain various stuff that has connection to the web, which include api calls, html, css, js and some frameworks (specifically matrialize)';
    if (mobile) {
      return infoCard(
        _context,
        pictureURL,
        title,
        body,
        '',
        widthSize: width,
        heightSize: height,
      );
    } else {
      //return normalListTile(_context, pictureURL, title, body);
    }
  }
}
