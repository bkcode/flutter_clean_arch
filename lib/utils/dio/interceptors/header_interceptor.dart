import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/config/app_config.dart';

class HeaderInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    options.baseUrl = AppConfig.host;
    return handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) {
    return handler.next(err);
  }
}
