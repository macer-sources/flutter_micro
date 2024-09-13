
import "package:core/core.dart";
import "package:home/home_module_impl.dart";

abstract class HomeModule extends BasicModule {
  static final HomeModule _instance = HomeModuleImpl();

  static HomeModule get instance {
    return _instance;
  }
}

