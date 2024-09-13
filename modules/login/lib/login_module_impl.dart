


import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:login/login_module.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/register_page.dart';
import 'package:router_path/router_path.dart';

class LoginModuleImpl extends LoginModule {
  LoginModuleImpl();

  @override
  Future<void> inject() async {
    // 注入一个单利对象，在其他
    // GetIt.instance.registerSingleton(AuthController());
  }

  @override
  // TODO: implement localizationsDelegate
  LocalizationsDelegate get localizationsDelegate => throw UnimplementedError();

  @override
  List<GetPage> pages() {
    return [
      GetPage(
          name: RouterPathKey.login.path,
          page: () => const LoginPage(),
          transitionDuration: const Duration(seconds: 0)),

      GetPage(
          name: RouterPathKey.register.path,
          page: () => const RegisterPage(),
          transitionDuration: const Duration(seconds: 0)),
    ];
  }

}
