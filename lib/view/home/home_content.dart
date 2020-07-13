import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/cards/info_card.dart';
import 'package:temp/components/cards/info_section.dart';

class HomeContent {
  var _context;
  var _insetBottom;

  HomeContent(this._context, this._insetBottom);

  aboutInfo(bool mobile, {var width, var height}) {
    if (mobile) {
      return infoCard(
        _context,
        'A Headline',
        'COMING: A section that summarize who I am',
        'resources/misc/ITU2.jpg',
        '',
        widthSize: width,
        heightSize: height,
      );
    } else {
      return infoSection('resources/misc/ITU2.jpg');
    }
  }

  algorithmsInfo({var width, var height}) {
    return infoCard(
      _context,
      'Algorithms',
      'COMING: This section will contain example of algoritms, with both vizualisation and use cases',
      'resources/misc/Algo.jpg',
      '',
      widthSize: width,
      heightSize: height,
    );
  }

  webInfo({var width, var height}) {
    return infoCard(
      _context,
      'Web Development (Front end)',
      'COMING: This section will contain various stuff that has connection to the web, which include api calls, html, css, js and some frameworks (specifically matrialize)',
      'resources/misc/web.jpg',
      '',
      widthSize: width,
      heightSize: height,
    );
  }
}
