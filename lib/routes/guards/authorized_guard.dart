import 'package:auto_route/auto_route.dart';
import 'package:flutter_clean_arch/routes/app_router.gr.dart';
import 'package:flutter_clean_arch/utils/tool/sp_util.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    SpUtil.getData<bool>('isLogin', defValue: false).then((isLogin) {
      if (isLogin) {
        resolver.next(true);
      } else {
        resolver.redirect(LoginRoute(onResult: (success) {
          resolver.next(success);
        }));
      }
    });
  }
}
