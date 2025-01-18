import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class TempPath {
  /// 获取temp 文件信息
  /// -iOS和macOS上的“NSCachesDirectory”。
  ///-Android上的`Context.getCacheDir`。
  static Future<Directory?> getTem() async {
    if (!kIsWeb) {
      return await getTemporaryDirectory();
    } else {
      return null;
    }
  }

  static Future<Directory?> getDocument() async {
    if (!kIsWeb) {
      return await getApplicationDocumentsDirectory();
    } else {
      return null;
    }
  }

  /// 获取temp 路径
  static getTemPath() async {
    Directory? directory = await getTem();
    return directory?.path ?? "";
  }

  static getDocumentPath() async {
    Directory? directory = await getDocument();
    return directory?.path ?? "";
  }
}
