


import 'package:core/core.dart';
import 'package:micro_flutter/src/config/environment.dart';

class Configuration {
  static Environment? _environment;
  static bool canAccessDeveloperMode = false;

  static initValue(Environment env,
      {bool canAccessDevelopmentMode = false}) {
    _environment = env;
    canAccessDeveloperMode = canAccessDevelopmentMode;
  }

  static Environment get environment {
    if (_environment == null) throw Exception('Environment not set');
    return _environment!;
  }
  static set environment(Environment env) {
    _environment = env;
  }

  static void initEnv() {
    environment.loadingModules.initEnv();
  }

  static Future<void> inject() async {
    environment.loadingModules.inject();
  }

  static List<GetPage> pages() {
    return environment.loadingModules.pages();
  }



}