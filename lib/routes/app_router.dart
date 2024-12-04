import 'package:auto_route/auto_route.dart';
import 'package:flutter_clean_arch/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, children: [
          AutoRoute(page: IndexRoute.page),
          AutoRoute(page: CommonRoute.page),
          AutoRoute(page: UserRoute.page),
        ]),

        AutoRoute(page: SecondRoute.page),
      ];

  @override
  List<AutoRouteGuard> get guards => [];
}
