
import 'dart:ffi';

import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';

abstract class BasicModule {
  LocalizationsDelegate<dynamic> get localizationsDelegate;

  Future<void> inject();

  List<GetPage> pages();
}
