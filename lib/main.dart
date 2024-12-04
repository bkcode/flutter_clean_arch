import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/config/app_config.dart';
import 'package:flutter_clean_arch/config/common_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jh_debug/jh_debug.dart';

void main() {
  jhDebugMain(
      appChild: const MyApp(),
      debugMode: DebugMode.inConsole,
      errorCallback: (details) {});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    jhDebug.setGlobalKey = commonConfig.getGlobalKey;
    WidgetsFlutterBinding.ensureInitialized();

    return ScreenUtilInit(
      designSize: AppConfig.screenSize,
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        onGenerateTitle: (context) => AppLocalizations.of(context).title,
        navigatorKey: jhDebug.getNavigatorKey,
        showPerformanceOverlay: false,
        locale: const Locale('zh', 'CH'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).title),
      ),
      body: Center(
        child: Text(AppLocalizations.of(context).helloWorld),
      ),
    );
  }
}

class PageInfo extends StatelessWidget {
  const PageInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
