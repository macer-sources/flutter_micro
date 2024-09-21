
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class Services {
  final Dio _dioInstance = Dio();

  void dioConfig() {
    _dioInstance.options = BaseOptions(
        connectTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
        receiveTimeout: const Duration(seconds: 5),
        responseType: ResponseType.json
    );
    _dioInstance.interceptors.add(InterceptorsWrapper(
        onRequest: (options, handler) {
          // TODO: EasyLoading.show(status:"loading...")
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // TODO: EasyLoading.dismiss();
          return handler.next(response);
        },
        onError: (DioException e, handler) {
          if (e.type == DioExceptionType.connectionTimeout) {
            debugPrint("[DEBUG]: 连接超时错误");
          }else {
            debugPrint("[DEBUG]: 网络错误： ${e.toString()}");
          }
          // TODO: EasyLoading.showError(msg);
        }
    ));
  }

  Services() {
    dioConfig();
  }
}

// 全局变量
var _service = Services();

enum HttpMethod {
  GET,
  PUT,
  POST,
  PATCH,
  DELETE,
  UPLOAD,
}
extension BasiceService on Services {
  static String basicURL() {
    // TODO: implement basicURL
    throw UnimplementedError();
  }

  static Future _sendRequest(HttpMethod method, String url,
      {required Map<String, dynamic> queryParams, dynamic data}) async {
    try {
      switch (method) {
        case HttpMethod.GET:
          return await _service._dioInstance
              .get(url, queryParameters: queryParams);
        case HttpMethod.PUT:
          return await _service._dioInstance
              .put(url, queryParameters: queryParams, data: data);
        case HttpMethod.POST:
          return await _service._dioInstance
              .post(url, queryParameters: queryParams, data: data);
        case HttpMethod.PATCH:
          return await _service._dioInstance
              .patch(url, queryParameters: queryParams, data: data);
        case HttpMethod.DELETE:
          return await _service._dioInstance
              .delete(url, queryParameters: queryParams, data: data);
        default:
          debugPrint('请求方式错误');
      }
    } on DioException catch (e) {
      debugPrint("[DEBUG]: $e.message ");
    } on Exception catch (e) {
      debugPrint("[DEBUG]: $e.toString() ");
    }
    return null;
  }



  static Future get(String url, {Map<String, dynamic>? queryParams}) async {
    return await _sendRequest(HttpMethod.GET, url, queryParams: queryParams ?? {});
  }

  static Future put(String url,
      {Map<String, dynamic>? queryParams, dynamic data}) async {
    return await _sendRequest(HttpMethod.PUT, url,
        queryParams: queryParams ?? {}, data: data);
  }

  static Future post(String url,
      { Map<String, dynamic>? queryParams, dynamic data}) async {
    return await _sendRequest(HttpMethod.POST, url,
        queryParams: queryParams ?? {}, data: data);
  }

  static Future patch(String url,
      { Map<String, dynamic>? queryParams, dynamic data}) async {
    return await _sendRequest(HttpMethod.PATCH, url,
        queryParams: queryParams ?? {}, data: data);
  }

  static Future delete(String url,
      { Map<String, dynamic>? queryParams, dynamic data}) async {
    return await _sendRequest(HttpMethod.DELETE, url,
        queryParams: queryParams ?? {}, data: data);
  }

  static Future uploadSingle(String url, String fileKey, File file,
      { Map<String, dynamic>? queryParams}) async {
    FormData formData = FormData.fromMap({
      fileKey: await MultipartFile.fromFile(file.path),
    });
    return await _sendRequest(HttpMethod.POST, url,
        queryParams: queryParams ?? {}, data: formData);
  }

  static Future<dynamic> mock(HttpMethod method, {required String name}) async {
    var responseStr = await rootBundle.loadString('mock/$name.json');
    var responsejson = json.decode(responseStr);
    return responsejson;
  }
}