import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart';

void openURL(String url) async {
  if (kIsWeb) {
    html.window.open(url, '_blank');
  } else {
    if (await canLaunch(url)) {
      launch(url);
    }
  }
}