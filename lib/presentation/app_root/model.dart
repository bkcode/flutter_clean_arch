import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/themes/index_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'model.g.dart';

class AppRootState {
  final Locale locale;
  final ThemeMode themeMode;
  final ThemeData lightTheme;
  final ThemeData darkTheme;

  const AppRootState({
    required this.locale,
    required this.themeMode,
    required this.lightTheme,
    required this.darkTheme,
  });

  AppRootState copyWith({
    Locale? locale,
    ThemeMode? themeMode,
    ThemeData? lightTheme,
    ThemeData? darkTheme,
  }) {
    return AppRootState(
      locale: locale ?? this.locale,
      themeMode: themeMode ?? this.themeMode,
      lightTheme: lightTheme ?? this.lightTheme,
      darkTheme: darkTheme ?? this.darkTheme,
    );
  }
}

@riverpod
class AppRootStateNotification extends _$AppRootStateNotification {
  @override
  AppRootState build() {
    return AppRootState(
      locale: Locale('zh', 'CH'),
      themeMode: ThemeMode.system,
      lightTheme: themeBlueLight,
      darkTheme: themeBlueDark,
    );
  }

  void setThemeMode(ThemeMode themeMode) async {
    state = state.copyWith(themeMode: themeMode);
  }

  void setLocale(Locale locale) async {
    state = state.copyWith(locale: locale);
  }

  void setThemeData(
      {required ThemeData lightTheme, required ThemeData darkTheme}) async {
    state = state.copyWith(
      lightTheme: lightTheme,
      darkTheme: darkTheme,
    );
  }
}
