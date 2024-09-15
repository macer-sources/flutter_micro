
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:home/home.dart';
import 'package:login/login.dart';
import 'package:micro_flutter/src/load_modules/loading_modules.dart';
import 'package:micro_flutter/src/modules/main_module.dart';
import 'package:network/network.dart';
import 'package:profile/profile.dart';

class ProductionLoadingModules extends LoadingModules {
  ProductionLoadingModules();

  final List<BasicModule> modules = [];

  // 初始化模块， 三个模块
  @override
  void initEnv() {
    modules.addAll([
      CoreModule.instance,
      MainModule.instance,
      NetworkModule.newInstance(environment: CoreEnvironment(baseUrl: "")),
      LoginModule.instance,
      HomeModule.instance,
      ProfileModule.instance,
    ]);
  }

  @override
  List<LocalizationsDelegate> get localizationsDelegates => [
    ...modules.map((e) => e.localizationsDelegate).toList(),
  ];

  @override
  Future<void> inject() async {
    await Future.wait(modules.map((e) => e.inject()).toList());
  }

  @override
  List<GetPage> pages() {
    List<GetPage> combinedList = [];
    for (var e in modules) {
      combinedList.addAll(e.pages());
    }
    return combinedList;
  }


}
