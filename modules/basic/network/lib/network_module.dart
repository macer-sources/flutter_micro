
import 'package:core/core.dart';
import 'package:network/network_module_imp.dart';
import 'package:network/src/environment.dart';

abstract class NetworkModule extends BasicModule {
  static final NetworkModule _instance = NetworkModuleImp();

  static NetworkModule newInstance({required CoreEnvironment environment}) {
    GetIt.instance.registerSingleton<CoreEnvironment>(environment);
    return _instance;
  }

  static NetworkModule get instance {
    final isRegisEnv = GetIt.instance.isRegistered<CoreEnvironment>();
    if (!isRegisEnv) throw Exception('Core Environment not set');
    return _instance;
  }
}
