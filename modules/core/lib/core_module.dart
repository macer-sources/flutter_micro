


import 'package:core/base_module.dart';
import 'package:core/core_module_impl.dart';

abstract class CoreModule extends BasicModule {
  static final CoreModule _instance = CoreModuleImpl();

  static CoreModule get instance {
    return _instance;
  }
}
