


import 'package:core/core.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:micro_flutter/app.dart';
import 'package:micro_flutter/src/config/configuration.dart';

void startApp() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // TODO: 会导致无法显示内容，奇怪？
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // 初始化(加载所有当前环境的models)
  Configuration.initEnv();
  // 执行所有的注入操作
  await Configuration.inject();

  // 日志配置
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });

  // 系统配置
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark));
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  // 启动 app

  runApp(const App());
  debugPrint("[DEBUG]: 启动完成");
}
