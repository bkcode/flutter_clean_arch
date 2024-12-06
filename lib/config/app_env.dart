// 环境类型
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_clean_arch/config/app_config.dart';
import 'package:flutter_clean_arch/utils/tool/log_util.dart';

enum ENV {
  DEV,
  TEST,
  PRE,
  PROD,
}

// dio请求前缀
final Map<ENV, String> _baseUrl = {
  ENV.DEV: 'https://api.github.com',
  ENV.TEST: 'https://api.github.com',
  ENV.PRE: 'https://api.github.com',
  ENV.PROD: 'https://api.github.com',
};

class AppEnv {
  /// 当前环境变量
  ENV currentEnv = ENV.DEV;

  /// 安卓渠道名称
  String _androidChannel = '';

  void init() {
    const envStr = String.fromEnvironment("INIT_ENV", defaultValue: "prod");
    if (!kIsWeb && Platform.isAndroid) {
      _androidChannel =
          const String.fromEnvironment("ANDROID_CHANNEL", defaultValue: "");
    }

    switch (envStr) {
      case "dev":
        currentEnv = ENV.DEV;
        break;
      case "test":
        currentEnv = ENV.TEST;
        break;
      case "pre":
        currentEnv = ENV.PRE;
        break;
      case "prod":
        currentEnv = ENV.PROD;
        break;
      default:
        currentEnv = ENV.PROD;
    }
    LogUtil.d('当前环境$currentEnv');
  }

  /// 获取app渠道名
  String getAppChannel() => _androidChannel;

  /// 设置当前环境
  set setEnv(ENV env) {
    currentEnv = env;
    AppConfig.host = _baseUrl[currentEnv] ?? '';
  }

  /// 获取url前缀
  String get baseUrl {
    return _baseUrl[currentEnv] ?? '';
  }
}

AppEnv appEnv = AppEnv();
