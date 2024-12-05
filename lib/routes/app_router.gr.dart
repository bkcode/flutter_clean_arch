// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter_clean_arch/presentation/common/index.dart' as _i2;
import 'package:flutter_clean_arch/presentation/home/index.dart' as _i3;
import 'package:flutter_clean_arch/presentation/layouts/basic_layout.dart'
    as _i1;
import 'package:flutter_clean_arch/presentation/user/index.dart' as _i4;

/// generated route for
/// [_i1.BasicLayout]
class BasicLayout extends _i5.PageRouteInfo<void> {
  const BasicLayout({List<_i5.PageRouteInfo>? children})
      : super(
          BasicLayout.name,
          initialChildren: children,
        );

  static const String name = 'BasicLayout';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.BasicLayout();
    },
  );
}

/// generated route for
/// [_i2.CommonScreen]
class CommonRoute extends _i5.PageRouteInfo<void> {
  const CommonRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CommonRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.CommonScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.UserScreen]
class UserRoute extends _i5.PageRouteInfo<void> {
  const UserRoute({List<_i5.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.UserScreen();
    },
  );
}
