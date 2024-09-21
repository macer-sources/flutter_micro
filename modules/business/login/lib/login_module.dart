
import "package:core/core.dart";
import "login_module_impl.dart";

abstract class LoginModule extends BasicModule {
  static final LoginModule _instance = LoginModuleImpl();

  static LoginModule get instance {
    return _instance;
  }

}

