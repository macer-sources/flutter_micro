import 'package:chat/chat_module.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:router_path/router_path.dart';

class ChatModuleImpl extends ChatModule {
  ChatModuleImpl();

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

    ];
  }

}
