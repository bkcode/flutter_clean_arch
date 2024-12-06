import 'package:dio/dio.dart';
import 'package:flutter_clean_arch/config/app_config.dart';
import 'package:flutter_clean_arch/utils/dio/error_process.dart';
import 'package:flutter_clean_arch/utils/index.dart';

class LogsInterceptors extends InterceptorsWrapper {
  @override
  onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    if (AppConfig.debug) {
      LogUtil.d(
          """Request-Url: ${options.baseUrl + options.path}\nRequest-Type: ${options.method}\nRequest-Header: ${options.headers.toString()}\nRequest-Params: ${options.queryParameters}""");
      if (options.data != null) {
        LogUtil.d("""Request-Data: ${options.data}""");
      }
    }
    return handler.next(options);
  }

  @override
  onResponse(Response response, ResponseInterceptorHandler handler) async {
    if (AppConfig.debug) {
      LogUtil.d('response-param: $response');
    }
    return handler.next(response);
  }

  @override
  onError(DioException err, ErrorInterceptorHandler handler) async {
    if (AppConfig.debug) {
      final errorDesc = DioErrorUtil.formatError(err);
      LogUtil.e(errorDesc);
    }
    return handler.next(err);
  }
}
