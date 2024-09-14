

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';
import 'package:router_path/router_path.dart';

class RouterManager {
  static BuildContext? get _context {
    return Get.context;
  }
  static void push(RouterPathKey path,{Object? extra}) {
    Logger.root.log(Level.INFO, "路由跳转 $path");
    Get.toNamed(path.path,arguments: extra);
  }

  static void pop({bool closeOverlays = true,Object? extra}) {
    Get.back(closeOverlays: closeOverlays);
  }

  static void popToRoot({int? k}) {
    if (_context == null) {
      return;
    }

    Get.global(k).currentState?.popUntil((route) {
      if (route is GetPageRoute) {
        GetPageRoute newRoute = route;
        return newRoute.fullscreenDialog || newRoute.isFirst;
      }else {
        debugPrint("[DEBUG]: 此方式只支持 使用 GetPageRoute 类型");
        return false;
      }
    });
  }

  static void dismiss({int? k}) {
    Get.global(k).currentState?.popUntil((route) {
     return route.isFirst;
    });
  }

  static void replace(RouterPathKey path, {Object? extra}) {
    Get.offAllNamed(path.path, arguments: extra);
  }
}