import 'package:flutter_web_test/logic/website_navigator_stub.dart'
    if (dart.library.html) 'package:flutter_web_test/logic/web_website_navigator.dart';

abstract class WebsiteNavigator {
  void navigateWebsite(String url);
  static WebsiteNavigator getWebsiteNavigatorFactory() => getWebsiteNavigator();
}
