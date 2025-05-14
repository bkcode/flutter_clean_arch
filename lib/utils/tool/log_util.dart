import 'package:logger/logger.dart';

import '../../config/app_env.dart' show appEnv, ENV;

class LogUtil {
  static final Logger _logger = Logger(
    level: Level.debug,
    printer: PrefixPrinter(
        PrettyPrinter(methodCount: 2, errorMethodCount: 8, colors: false)),
  );

  static void log(Level level, Object? data) {
    var formattedMessage = _formatMessage(level, data);

    if (appEnv.currentEnv == ENV.PROD && level == Level.debug) {
      return;
    }

    _logger.log(level, formattedMessage);
  }

  static String _formatMessage(Level level, Object? data) {
    String timeStamp = DateTime.now().toIso8601String();
    return '[$timeStamp] [${level.toString().split('.').last}] $data';
  }

  static void d(Object? data) {
    log(Level.debug, data);
  }

  static void i(Object? data) {
    log(Level.info, data);
  }

  static void w(Object? data) {
    log(Level.warning, data);
  }

  static void e(Object? data) {
    log(Level.error, data);
  }
}
