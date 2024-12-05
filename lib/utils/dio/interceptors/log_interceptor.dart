import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/config/app_config.dart';

class LogsInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (AppConfig.debug) {
      print(
          """Request-Url: ${options.baseUrl + options.path}\nRequest-Type: ${options.method}\nRequest-Header: ${options.headers.toString()}\nRequest-Params: ${options.queryParameters}""");
      if (options.data != null) {
        print("""Request-Data: ${options.data}""");
      }
    }
    return handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (AppConfig.debug) {
      print('response-param: $response');
    }
    return handler.next(response);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) async {
    if (AppConfig.debug) {
      print('Request-Error: ${err.error}');
    }

    return handler.next(err);
  }
}
