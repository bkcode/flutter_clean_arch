// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_clean_arch/presentation/authorized/index.dart' as _i1;
import 'package:flutter_clean_arch/presentation/common/index.dart' as _i3;
import 'package:flutter_clean_arch/presentation/home/index.dart' as _i4;
import 'package:flutter_clean_arch/presentation/layouts/basic_layout.dart'
    as _i2;
import 'package:flutter_clean_arch/presentation/login/index.dart' as _i5;
import 'package:flutter_clean_arch/presentation/user/index.dart' as _i6;

/// generated route for
/// [_i1.AuthorizedScreen]
class AuthorizedRoute extends _i7.PageRouteInfo<void> {
  const AuthorizedRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AuthorizedRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthorizedRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.AuthorizedScreen();
    },
  );
}

/// generated route for
/// [_i2.BasicLayout]
class BasicLayout extends _i7.PageRouteInfo<void> {
  const BasicLayout({List<_i7.PageRouteInfo>? children})
      : super(
          BasicLayout.name,
          initialChildren: children,
        );

  static const String name = 'BasicLayout';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.BasicLayout();
    },
  );
}

/// generated route for
/// [_i3.CommonScreen]
class CommonRoute extends _i7.PageRouteInfo<void> {
  const CommonRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CommonRoute.name,
          initialChildren: children,
        );

  static const String name = 'CommonRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.CommonScreen();
    },
  );
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.HomeScreen();
    },
  );
}

/// generated route for
/// [_i5.LoginScreen]
class LoginRoute extends _i7.PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    _i8.Key? key,
    required void Function(bool) onResult,
    List<_i7.PageRouteInfo>? children,
  }) : super(
          LoginRoute.name,
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<LoginRouteArgs>();
      return _i5.LoginScreen(
        key: args.key,
        onResult: args.onResult,
      );
    },
  );
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    required this.onResult,
  });

  final _i8.Key? key;

  final void Function(bool) onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [_i6.UserScreen]
class UserRoute extends _i7.PageRouteInfo<void> {
  const UserRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UserRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserScreen();
    },
  );
}
