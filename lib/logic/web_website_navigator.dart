import 'dart:html' as html;

import 'package:flutter_web_test/logic/website_navigator.dart';

class WebWebsiteNavigator extends WebsiteNavigator {
  @override
  void navigateWebsite(String url) {
    html.window.open(url, 'new tab');
  }
}

//Provides WebFileDownloader
WebsiteNavigator getWebsiteNavigator() => WebWebsiteNavigator();
