import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/config/app_env.dart';

class AppConfig {
  /// 设计稿尺寸 宽750 高1334
  static Size screenSize = const Size(750, 1334);

  /// 是否开启dio接口详细信息输出，以及其它相关插件调试信息
  static const bool debug = true;

  /// 是否直接跳过闪屏页面
  static const bool notSplash = false;

  /// 是否跳过引导页面
  static const bool isShowWelcome = false;

  /// 闪屏后跳转的页面（方便调试），需notSplash参数为true才有效果
  static String directPageName = "/";

  /// 是否开启更新app
  static const bool isUpdateApp = true;

  /// dio请求前缀
  static String host = appEnv.baseUrl;

  /// 是否启用代理，启用代理后，反向代理IP及端口才能生效
  static const bool usingProxy = false;

  /// 反向代理的IP:端口
  static const String proxyAddress = "";
}
