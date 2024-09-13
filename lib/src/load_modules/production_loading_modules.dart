
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:micro_flutter/src/load_modules/loading_modules.dart';
import 'package:network/network.dart';

class ProductionLoadingModules extends LoadingModules {
  ProductionLoadingModules();

  final List<BasicModule> modules = [];

  // 初始化模块， 三个模块
  @override
  void initEnv() {
    modules.addAll([
      NetworkModule.newInstance(environment: CoreEnvironment(baseUrl: ""))
      // TODO: 其他模块
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
    modules.forEach((e){
      combinedList.addAll(e.pages());
    });
    return combinedList;
  }


}
