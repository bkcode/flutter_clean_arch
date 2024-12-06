import 'package:dio/dio.dart';

class DioErrorUtil {
  static String formatError(DioException? error) {
    if (error == null) {
      return "Unexpected error occured";
    }

    String errorDescription = "";
    switch (error.type) {
      case DioExceptionType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioExceptionType.connectionTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioExceptionType.unknown:
        errorDescription =
            "Connection to API server failed due to internet connection";
        break;
      case DioExceptionType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioExceptionType.badResponse:
        errorDescription =
            "Received invalid status code: ${error.response?.statusCode}";
        if (error.response != null) {
          errorDescription += "\nResponse data: ${error.response?.data}";
        }
        break;
      case DioExceptionType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
      case DioExceptionType.badCertificate:
        errorDescription = "Bad certificate received from the server";
        break;
      case DioExceptionType.connectionError:
        errorDescription =
            "Connection error occurred while trying to reach the server";
        break;
    }

    if (error.message?.isNotEmpty ?? false) {
      errorDescription += "\n${error.message}";
    }

    return errorDescription;
  }
}
