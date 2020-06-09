import 'package:temp/components/text_picture_button.dart';

class HomeContent {
  var _context;
  var _insetBottom;

  HomeContent(this._context, this._insetBottom);


  aboutInfo() {
    return topTextPictureButton(
        _context,
        'Some fancy text here! Some fancy text here! Some fancy text here!',
        'About me',
        _insetBottom,
        '/home/about');
  }

  algorithmsInfo() { // TODO: routes
    return topTextPictureButton(
        _context,
        'Let me show you waht i can do with algoritms. Let me show you waht i can do with algoritms.',
        'Go To Algorithms',
        _insetBottom,
        '');
  }

  webInfo() { // TODO: routes
    return topTextPictureButton(
        _context,
        'This will be a paragrpah about my knowledge of web development.',
        'Go To Web Development',
        _insetBottom,
        '');
  }
}
