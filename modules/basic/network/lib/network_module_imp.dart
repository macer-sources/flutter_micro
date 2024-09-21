


import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_it/get_it.dart';
import 'package:network/network_module.dart';
import 'package:network/src/environment.dart';
import 'package:network/src/dio_injection.dart';

class NetworkModuleImp extends NetworkModule {
  NetworkModuleImp();

  @override
  Future<void> inject() async {
    DioInjection().inject(GetIt.instance.get<CoreEnvironment>());
  }

  @override
  // TODO: implement localizationsDelegate
  LocalizationsDelegate get localizationsDelegate => throw UnimplementedError();

  @override
  List<GetPage> pages() {
    return [];
  }
}
