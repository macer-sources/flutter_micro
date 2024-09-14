import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:micro_flutter/src/modules/main_module.dart';
import 'package:micro_flutter/src/pages/main_page.dart';
import 'package:router_path/router_path.dart';

class MainModuleImpl extends MainModule {
  MainModuleImpl();

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
          name: RouterPathKey.main.path,
          page: () => const MainPage(),
          transitionDuration: const Duration(seconds: 0)),
    ];
  }

}
