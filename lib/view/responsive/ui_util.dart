import 'package:flutter/material.dart';

import 'device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQueryData) {
  double _deviceWidth = mediaQueryData.size.shortestSide;

  if (_deviceWidth > 600) {
    return DeviceScreenType.Desktop;
  }

  return DeviceScreenType.Mobile;
}
