
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:home/home_module.dart';
import 'package:home/pages/home_page.dart';
import 'package:router_path/router_path.dart';

class HomeModuleImpl extends HomeModule {
  HomeModuleImpl();

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
          name: RouterPathKey.home.path,
          page: () => const HomePage(),
          transitionDuration: const Duration(seconds: 0)),
    ];
  }

}
