import 'package:flutter_web_test/logic/websitenavigatorstub.dart'
    if (dart.library.html) 'package:flutter_web_test/logic/webwebsitenavigator.dart';

abstract class WebsiteNavigator {
  void navigateWebsite(String url);
  static WebsiteNavigator getWebsiteNavigatorFactory() => getWebsiteNavigator();
}
