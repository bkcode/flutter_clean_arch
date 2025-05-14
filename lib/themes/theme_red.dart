part of 'index_theme.dart';

class RedTheme {
  final TextTheme textTheme;

  const RedTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff8f4952),
      surfaceTint: Color(0xff8f4952),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffd9dc),
      onPrimaryContainer: Color(0xff3b0712),
      secondary: Color(0xff8f4952),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdadc),
      onSecondaryContainer: Color(0xff3b0712),
      tertiary: Color(0xff785930),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffffddb6),
      onTertiaryContainer: Color(0xff2a1800),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      onSurfaceVariant: Color(0xff524344),
      outline: Color(0xff847374),
      outlineVariant: Color(0xffd7c1c2),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inversePrimary: Color(0xffffb2ba),
      primaryFixed: Color(0xffffd9dc),
      onPrimaryFixed: Color(0xff3b0712),
      primaryFixedDim: Color(0xffffb2ba),
      onPrimaryFixedVariant: Color(0xff72333c),
      secondaryFixed: Color(0xffffdadc),
      onSecondaryFixed: Color(0xff3b0712),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff72333b),
      tertiaryFixed: Color(0xffffddb6),
      onTertiaryFixed: Color(0xff2a1800),
      tertiaryFixedDim: Color(0xffe9bf8e),
      onTertiaryFixedVariant: Color(0xff5d411b),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e5),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff6d2f38),
      surfaceTint: Color(0xff8f4952),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffa95f68),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff6d2f37),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffa95f67),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff593d17),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff906e44),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff22191a),
      onSurfaceVariant: Color(0xff4e3f40),
      outline: Color(0xff6b5b5c),
      outlineVariant: Color(0xff887677),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inversePrimary: Color(0xffffb2ba),
      primaryFixed: Color(0xffa95f68),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff8c4750),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xffa95f67),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff8c474f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff906e44),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff75562e),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e5),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff440e19),
      surfaceTint: Color(0xff8f4952),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff6d2f38),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff440e18),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6d2f37),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff331e00),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff593d17),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffff8f7),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff2d2122),
      outline: Color(0xff4e3f40),
      outlineVariant: Color(0xff4e3f40),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff382e2f),
      inversePrimary: Color(0xffffe6e7),
      primaryFixed: Color(0xff6d2f38),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff511923),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6d2f37),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff511922),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff593d17),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff402804),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffe7d6d6),
      surfaceBright: Color(0xfffff8f7),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfffff0f0),
      surfaceContainer: Color(0xfffceaea),
      surfaceContainerHigh: Color(0xfff6e4e5),
      surfaceContainerHighest: Color(0xfff0dedf),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb2ba),
      surfaceTint: Color(0xffffb2ba),
      onPrimary: Color(0xff561d26),
      primaryContainer: Color(0xff72333c),
      onPrimaryContainer: Color(0xffffd9dc),
      secondary: Color(0xffffb2b9),
      onSecondary: Color(0xff561d26),
      secondaryContainer: Color(0xff72333b),
      onSecondaryContainer: Color(0xffffdadc),
      tertiary: Color(0xffe9bf8e),
      onTertiary: Color(0xff442b06),
      tertiaryContainer: Color(0xff5d411b),
      onTertiaryContainer: Color(0xffffddb6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfff0dedf),
      onSurfaceVariant: Color(0xffd7c1c2),
      outline: Color(0xff9f8c8d),
      outlineVariant: Color(0xff524344),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inversePrimary: Color(0xff8f4952),
      primaryFixed: Color(0xffffd9dc),
      onPrimaryFixed: Color(0xff3b0712),
      primaryFixedDim: Color(0xffffb2ba),
      onPrimaryFixedVariant: Color(0xff72333c),
      secondaryFixed: Color(0xffffdadc),
      onSecondaryFixed: Color(0xff3b0712),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff72333b),
      tertiaryFixed: Color(0xffffddb6),
      onTertiaryFixed: Color(0xff2a1800),
      tertiaryFixedDim: Color(0xffe9bf8e),
      onTertiaryFixedVariant: Color(0xff5d411b),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffffb8bf),
      surfaceTint: Color(0xffffb2ba),
      onPrimary: Color(0xff33030e),
      primaryContainer: Color(0xffca7a83),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffffb8be),
      onSecondary: Color(0xff34030d),
      secondaryContainer: Color(0xffca7a82),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffedc492),
      onTertiary: Color(0xff231300),
      tertiaryContainer: Color(0xffaf8a5d),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1112),
      onSurface: Color(0xfffff9f9),
      onSurfaceVariant: Color(0xffdbc6c7),
      outline: Color(0xffb29e9f),
      outlineVariant: Color(0xff917f80),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inversePrimary: Color(0xff74343d),
      primaryFixed: Color(0xffffd9dc),
      onPrimaryFixed: Color(0xff2c0009),
      primaryFixedDim: Color(0xffffb2ba),
      onPrimaryFixedVariant: Color(0xff5d222c),
      secondaryFixed: Color(0xffffdadc),
      onSecondaryFixed: Color(0xff2c0008),
      secondaryFixedDim: Color(0xffffb2b9),
      onSecondaryFixedVariant: Color(0xff5d222b),
      tertiaryFixed: Color(0xffffddb6),
      onTertiaryFixed: Color(0xff1c0e00),
      tertiaryFixedDim: Color(0xffe9bf8e),
      onTertiaryFixedVariant: Color(0xff4b310c),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffff9f9),
      surfaceTint: Color(0xffffb2ba),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffffb8bf),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffff9f9),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffffb8be),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffffaf7),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffedc492),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff1a1112),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffff9f9),
      outline: Color(0xffdbc6c7),
      outlineVariant: Color(0xffdbc6c7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xfff0dedf),
      inversePrimary: Color(0xff4e1620),
      primaryFixed: Color(0xffffdfe1),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffffb8bf),
      onPrimaryFixedVariant: Color(0xff33030e),
      secondaryFixed: Color(0xffffdfe1),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffffb8be),
      onSecondaryFixedVariant: Color(0xff34030d),
      tertiaryFixed: Color(0xffffe2c2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffedc492),
      onTertiaryFixedVariant: Color(0xff231300),
      surfaceDim: Color(0xff1a1112),
      surfaceBright: Color(0xff413737),
      surfaceContainerLowest: Color(0xff140c0d),
      surfaceContainerLow: Color(0xff22191a),
      surfaceContainer: Color(0xff271d1e),
      surfaceContainerHigh: Color(0xff312828),
      surfaceContainerHighest: Color(0xff3d3233),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

final ThemeData themeRedLight = const RedTheme(TextTheme()).light();
final ThemeData themeRedDark = const RedTheme(TextTheme()).dark();
