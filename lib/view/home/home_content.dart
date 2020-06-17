import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/info_card.dart';
import 'package:temp/components/text_picture_button.dart';

class HomeContent {
  var _context;
  var _insetBottom;

  HomeContent(this._context, this._insetBottom);

  aboutInfo() {
    return infoCard(
      _context,
      '',
      'resources/misc/ITU2.jpg',
      'A Headline',
      'COMING: A section that summarize who I am',
      widthSize: MediaQuery.of(_context).size.width * 0.9,
      heightSize: MediaQuery.of(_context).size.width * 0.25,
    );

    /* return topTextPictureButton(
        _context,
        'Some fancy text here! Some fancy text here! Some fancy text here!',
        'About me',
        _insetBottom,
        '/home/about'); */
  }

  algorithmsInfo() {
    return infoCard(_context, '', 'resources/misc/Algo.jpg', 'Algorithms',
        'COMING: This section will contain example of algoritms, with both vizualisation and use cases',
        readMoreText: 'Learn more here >');

    /*  // TODO: routes
    return topTextPictureButton(
        _context,
        '',
        'Go To Algorithms',
        _insetBottom,
        ''); */
  }

  webInfo() {
    return infoCard(
      _context,
      '',
      'resources/misc/web.jpg',
      'Web Development (Front end)',
      'COMING: This section will contain various stuff that has connection to the web, which include api calls, html, css, js and some frameworks (specifically matrialize)',
    );

    /* // TODO: routes
    return topTextPictureButton(
        _context,
        'COMING: This section will contain various stuff that has connection to the web, which include api calls, html, css, js and some frameworks (specifically matrialize)',
        'Go To Web Development',
        _insetBottom,
        ''); */
  }
}
