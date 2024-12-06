import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/utils/tool/tips_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../app_root/model.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appRootStateNotificationProvider);
    var locale = AppLocalizations.of(context);
    final themeTips = [
      locale.autoMode,
      locale.lightMode,
      locale.darkMode,
    ];

    final DateTime now = DateTime.now();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              locale.helloWorld,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            20.verticalSpace,
            Text('${locale.languageTip}: ${locale.language}'),
            Text('${locale.themeTip}: ${themeTips[appState.themeMode.index]}'),
            Text(locale.variable("😂")),

            // plural
            Text(locale.applesTip),
            Text(locale.apples(0)),
            Text(locale.apples(1)),
            Text(locale.apples(2)),

            // gender
            Text(locale.genderTip),
            Text(locale.gender("female", "Julia")),

            // date
            Text(locale.today(now)),

            // number
            Text(locale.numberOfDataPoints(12345677)),

            ElevatedButton(
                onPressed: () {
                  Tips.info("Toast Test",gravity: ToastGravity.CENTER);
                },
                child: const Text("Toast")),

            ElevatedButton(
              onPressed: () {
                context.router.pushNamed('/authorized');
              },
              child: Text(
                locale.goAuthorizedPage,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
