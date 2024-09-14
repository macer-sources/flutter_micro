import 'package:core/base_module.dart';
import 'package:micro_flutter/src/modules/main_module_impl.dart';

abstract class MainModule extends BasicModule {
  static final MainModule _instance = MainModuleImpl();

  static MainModule get instance {
    return _instance;
  }
}

