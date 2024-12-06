import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/config/app_env.dart';
import 'package:flutter_clean_arch/presentation/app_root/index.dart';
import 'package:flutter_clean_arch/utils/tool/sp_util.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'utils/tool/log_util.dart';

late SharedPreferences sharedPref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: _EagerInitialization(child: AppRoot())));
}

class _EagerInitialization extends StatefulHookConsumerWidget {
  const _EagerInitialization({super.key, required this.child});

  final Widget child;

  @override
  _EagerInitializationState createState() => _EagerInitializationState();
}

class _EagerInitializationState extends ConsumerState<_EagerInitialization> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // 只在非生产环境下打印 DEBUG 日志
    LogUtil.d("This is a debug message.");

    // 打印其他级别的日志
    LogUtil.i("This is an info message.");
    LogUtil.w("This is a warning message.");
    LogUtil.e("This is an error message.");

    appEnv.init();
    SpUtil.getInstance();
    return widget.child;
  }
}
