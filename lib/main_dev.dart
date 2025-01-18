import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:micro_flutter/main.dart';
import 'package:micro_flutter/src/config/configuration.dart';
import 'package:micro_flutter/src/config/environment.dart';

void main() {
  runZonedGuarded(
    () => _init(),
    (err, stace) {
      if (kDebugMode) {
        print(FlutterErrorDetails(exception: err, stack: stace));
      }
    },
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        parent.print(zone, line);
      },
    ),
  );
}

void _init() {
  Configuration.initValue(Environments.develop, canAccessDevelopmentMode: true);
  startApp();
}

