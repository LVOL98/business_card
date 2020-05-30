import 'package:temp/view/components/info_box.dart';

class HomeContent {
  var insetBottom;

  HomeContent(this.insetBottom);

  var _info_box = InfoBox();

  algorithmsInfo() {
    return _info_box.standardHomeInfo('Let me show you waht i can do with algoritms', 'Go To Algorithms', insetBottom);
  }

  webInfo() {
    return _info_box.standardHomeInfo('This will be a paragrpah about my knowledge of web development.', 'Go To Web Development', insetBottom);
  }
}