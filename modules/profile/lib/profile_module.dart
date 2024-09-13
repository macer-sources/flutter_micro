
import "package:core/core.dart";
import "package:profile/profile_module_impl.dart";

abstract class ProfileModule extends BasicModule {
  static final ProfileModule _instance = ProfileModuleImpl();

  static ProfileModule get instance {
    return _instance;
  }

}

