import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/utils/tool/sp_util.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../routes/app_router.gr.dart';

@RoutePage()
class AuthorizedScreen extends StatelessWidget {
  const AuthorizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).authorizedPageTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppLocalizations.of(context).authorizedPageTitle),
            ElevatedButton(
              onPressed: () {
                SpUtil.setData('isLogin', false);
                context.router.replaceAll([const BasicLayout()]);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.white,
              ),
              child: Text(AppLocalizations.of(context).logout),
            ),
          ],
        ),
      ),
    );
  }
}
