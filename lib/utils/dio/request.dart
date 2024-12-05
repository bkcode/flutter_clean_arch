import 'package:dio/dio.dart';

Dio _initDio() {
  BaseOptions baseOptions = BaseOptions(
    baseUrl: 'https://api.github.com/',
    connectTimeout: const Duration(seconds: 5000),
    receiveTimeout: const Duration(seconds: 3000),
    headers: {
      'Content-Type': 'application/json',
    },
  );

  Dio dioClient = Dio(baseOptions);

  return dioClient;
}
