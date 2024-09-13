



import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

abstract class LoadingModules {
  const LoadingModules();

  List<LocalizationsDelegate<dynamic>> get localizationsDelegates;

  void initEnv();

  Future<void> inject();

  List<GetPage> pages();
}