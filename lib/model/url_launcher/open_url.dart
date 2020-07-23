import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter/foundation.dart';

/// A method that tries to open a hyperlink.
/// This will work with both web and mobile, and given
/// an empty or non working url, the page will simply
/// be loaded as blank or with an error in the systems
/// given browser
void openURL(String url) async {
  if (kIsWeb) {
    html.window.open(url, '_blank');
  } else {
    if (await canLaunch(url)) {
      launch(url);
    }
  }
}
