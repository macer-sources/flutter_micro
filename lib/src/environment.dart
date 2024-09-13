import 'package:micro_flutter/src/load_modules/develop_loading_modules.dart';
import 'package:micro_flutter/src/load_modules/loading_modules.dart';
import 'package:micro_flutter/src/load_modules/production_loading_modules.dart';

class Environment {
  final String name;
  final String baseUrl;
  final LoadingModules loadingModules;

  const Environment({
    required this.name,
    required this.baseUrl,
    required this.loadingModules,
  });
}
extension Environments on Environment {
  static final develop = Environment(
    name: 'development',
    baseUrl: "https://bbdd19e4-7ba1-4d22-8960-d3f6cf8b2e29.mock.pstmn.io/api/",
    loadingModules: DevelopLoadingModules(),
  );

  static final production = Environment(
    name: 'production',
    baseUrl: "https://bbdd19e4-7ba1-4d22-8960-d3f6cf8b2e29.mock.pstmn.io/api/",
    loadingModules: ProductionLoadingModules(),
  );
}



