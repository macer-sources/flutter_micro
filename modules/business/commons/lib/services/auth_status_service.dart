import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

class AuthStatusService extends GetxService {
  var status = false.obs;

  void logined() {
    status.value = true;
  }

  void logout() {
    status.value = false;
  }

  Future<void> autoLogin() async {
    // 模拟自动登录失败
    await Future.delayed(const Duration(seconds: 2));
    debugPrint("[DEBUG]: autoLogin 登陆成功");
    logined();
  }
}
