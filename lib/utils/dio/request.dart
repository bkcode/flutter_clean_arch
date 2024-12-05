import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_clean_arch/config/app_config.dart';
import 'package:flutter_clean_arch/utils/dio/interceptors/header_interceptor.dart';
import 'package:flutter_clean_arch/utils/dio/interceptors/log_interceptor.dart';

Dio _initDio() {
  BaseOptions baseOptions = BaseOptions(
    baseUrl: AppConfig.host,
    connectTimeout: const Duration(seconds: 50000),
    responseType: ResponseType.plain,
    receiveDataWhenStatusError: true,
  );

  Dio dioClient = Dio(baseOptions);

  dioClient.interceptors.addAll([
    HeaderInterceptors(),
    LogsInterceptors(),
  ]);

  if (AppConfig.usingProxy) {
    dioClient.httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
      final client = HttpClient();
      client.findProxy = (uri) {
        // set Http proxy, please note that the proxy will take effect on the device you are running the application on, not on the host platform.
        return "PROXY ${AppConfig.proxyAddress}";
      };
      // https verify
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    });
  }

  return dioClient;
}

Future<T> safeRequest<T>(
  String url, {
  Object? data,
  Options? options,
  Map<String, dynamic>? queryParameters,
  CancelToken? cancelToken,
}) async {
  try {
    return Request.dioClient
        .request(
          url,
          data: data,
          queryParameters: queryParameters,
          options: options,
          cancelToken: cancelToken,
        )
        .then((data) => jsonDecode(data.data as String) as T);
  } catch (e) {
    print(e);
    rethrow;
  }
}

class Request {
  static Dio dioClient = _initDio();

  /// get request
  static Future<T> get<T>(
    String url, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) async {
    return safeRequest<T>(
      url,
      options: options,
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );
  }

  /// post request
  static Future<T> post<T>(
    String url, {
    Options? options,
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) {
    return safeRequest<T>(
      url,
      data: data,
      options: options?.copyWith(method: 'POST') ?? Options(method: 'POST'),
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );
  }

  /// put request
  static Future<T> put<T>(
    String url, {
    Options? options,
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) {
    return safeRequest<T>(
      url,
      data: data,
      options: options?.copyWith(method: 'PUT') ?? Options(method: 'PUT'),
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );
  }

  /// delete request
  static Future<T> delete<T>(
    String url, {
    Options? options,
    Object? data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
  }) {
    return safeRequest<T>(
      url,
      data: data,
      options: options?.copyWith(method: 'DELETE') ?? Options(method: 'DELETE'),
      queryParameters: queryParameters,
      cancelToken: cancelToken,
    );
  }
}
