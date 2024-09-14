import 'package:micro_flutter/main.dart';
import 'package:micro_flutter/src/config/configuration.dart';
import 'package:micro_flutter/src/config/environment.dart';

void main() {
  Configuration.initValue(Environments.production);
  startApp();
}
