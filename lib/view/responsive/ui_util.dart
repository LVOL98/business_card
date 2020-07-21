import 'package:flutter/cupertino.dart';

import 'device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  double _deviceWidth = mediaQueryData.size.shortestSide;

  if (_deviceWidth > 750) {
    return DeviceScreenType.Desktop;
  }

  return DeviceScreenType.Mobile;
}

// https://www.youtube.com/watch?v=udsysUj-X4w&feature=youtu.be