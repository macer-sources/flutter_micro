

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:profile/profile_module.dart';

class ProfileModuleImpl extends ProfileModule {
  ProfileModuleImpl();

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
    return [];
  }

}
