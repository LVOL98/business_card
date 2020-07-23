import 'package:flutter/material.dart';
import 'package:temp/view/responsive/responsive_builder.dart';
import 'device_screen_type.dart';

/// Return which device type the builder should choose, defined
/// by the size of the screen of the device
class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;

  const ScreenTypeLayout({Key key, @required this.mobile, this.desktop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop) {
        if (desktop != null) {
          return desktop;
        }
      }

      return mobile;
    });
  }
}
