
import 'dart:developer';

import 'package:get_it/get_it.dart';

import 'environment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioInjection {
  void inject(CoreEnvironment coreEnvironment) {
    final getIt = GetIt.instance;
    getIt.registerSingleton<BaseOptions>(
        BaseOptions(baseUrl: coreEnvironment.baseUrl));
    getIt.registerSingleton<Dio>(Dio(getIt.get<BaseOptions>()));

    if (kDebugMode) {
      LogInterceptor logInterceptor = LogInterceptor(
        responseBody: true,
        error: true,
        requestHeader: true,
        responseHeader: false,
        request: true,
        requestBody: true,
        logPrint: (object) {
          log(object.toString());
        },
      );
      getIt.get<Dio>().interceptors.add(logInterceptor);
    }

    // DioCache.initCacheStore();
    PrettyDioLogger prettyDioLogger =
        PrettyDioLogger(requestBody: true, requestHeader: true);

    getIt.get<Dio>().interceptors.add(prettyDioLogger);
    // getIt.get<Dio>().interceptors.add(DioCache.interceptor());
  }
}
