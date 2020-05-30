import 'package:temp/view/components/info_box.dart';

class HomeContent {
  var _info_box = InfoBox();

  algorithmsInfo() {
    return _info_box.standardHomeInfo('Let me show you waht i can do with algoritms', 'Go To Algorithms');
  }
}