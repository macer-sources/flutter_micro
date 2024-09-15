


import 'package:core/core.dart';
import 'package:core/core_module.dart';
import 'package:flutter/cupertino.dart';

class CoreModuleImpl extends CoreModule {
  CoreModuleImpl();

  @override
  Future<void> inject() async {
    // 注入一个单利对象，在其他
  }

  @override
  // TODO: implement localizationsDelegate
  LocalizationsDelegate get localizationsDelegate => throw UnimplementedError();

  @override
  List<GetPage> pages() {
    return [

    ];
  }

}
