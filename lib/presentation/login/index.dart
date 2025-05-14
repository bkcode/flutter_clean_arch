import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/l10n/app_localizations.dart';
import 'package:flutter_clean_arch/utils/tool/sp_util.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required this.onResult});

  final void Function(bool success) onResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).login),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                SpUtil.setData('isLogin', true);
                onResult(true);
              },
              child: Text(AppLocalizations.of(context).login),
            ),
          ],
        ),
      ),
    );
  }
}
