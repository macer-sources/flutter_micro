import 'package:micro_flutter/main.dart';
import 'package:micro_flutter/src/configuration.dart';
import 'package:micro_flutter/src/environment.dart';

void main() {
  Configuration.initValue(Environments.production);
  startApp();
}
