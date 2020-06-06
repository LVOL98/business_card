import 'package:temp/components/info_box.dart';

class HomeContent {
  var insetBottom;

  HomeContent(this.insetBottom);

  var _infoBox = InfoBox();

  aboutInfo() {
    return _infoBox.standardHomeInfo('Some fancy text here! Some fancy text here! Some fancy text here!', 'About me', insetBottom);
  }

  algorithmsInfo() {
    return _infoBox.standardHomeInfo('Let me show you waht i can do with algoritms. Let me show you waht i can do with algoritms.', 'Go To Algorithms', insetBottom);
  }

  webInfo() {
    return _infoBox.standardHomeInfo('This will be a paragrpah about my knowledge of web development.', 'Go To Web Development', insetBottom);
  }
}