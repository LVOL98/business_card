import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/components/cards/info_card.dart';

class HomeContent {
  var _context;
  var _insetBottom;

  HomeContent(this._context, this._insetBottom);

  aboutInfo({var width, var height}) {
    return infoCard(
      _context,
      '',
      'resources/misc/ITU2.jpg',
      'A Headline',
      'COMING: A section that summarize who I am',
      widthSize: width,
      heightSize: height,
    );
  }

  algorithmsInfo({var width, var height}) {
    return infoCard(
      _context,
      '',
      'resources/misc/Algo.jpg',
      'Algorithms',
      'COMING: This section will contain example of algoritms, with both vizualisation and use cases',
      readMoreText: 'Learn more here >',
      widthSize: width,
      heightSize: height,
    );
  }

  webInfo({var width, var height}) {
    return infoCard(
      _context,
      '',
      'resources/misc/web.jpg',
      'Web Development (Front end)',
      'COMING: This section will contain various stuff that has connection to the web, which include api calls, html, css, js and some frameworks (specifically matrialize)',
      widthSize: width,
      heightSize: height,
    );
  }
}
