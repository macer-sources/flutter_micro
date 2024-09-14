

import 'package:network/network.dart';

class LoginService extends Services {
  static String basicURL() {
    return "";
  }

  static Future checkLoginStatus() async {
    var result = await BasiceService.get(basicURL() + "checkLoginStatus");
    return result;
  }
}