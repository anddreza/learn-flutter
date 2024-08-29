import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4283196971),
      surfaceTint: Color(4283196971),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4291751331),
      onPrimaryContainer: Color(4279246848),
      secondary: Color(4283982409),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292667335),
      onSecondaryContainer: Color(4279639563),
      tertiary: Color(4281886307),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290571495),
      onTertiaryContainer: Color(4278198302),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294572783),
      onBackground: Color(4279901206),
      surface: Color(4294572783),
      onSurface: Color(4279901206),
      surfaceVariant: Color(4292994261),
      onSurfaceVariant: Color(4282665021),
      outline: Color(4285888876),
      outlineVariant: Color(4291152058),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282858),
      inverseOnSurface: Color(4294046438),
      inversePrimary: Color(4289909129),
      primaryFixed: Color(4291751331),
      onPrimaryFixed: Color(4279246848),
      primaryFixedDim: Color(4289909129),
      onPrimaryFixedVariant: Color(4281683477),
      secondaryFixed: Color(4292667335),
      onSecondaryFixed: Color(4279639563),
      secondaryFixedDim: Color(4290825132),
      onSecondaryFixedVariant: Color(4282403379),
      tertiaryFixed: Color(4290571495),
      onTertiaryFixed: Color(4278198302),
      tertiaryFixedDim: Color(4288729291),
      onTertiaryFixedVariant: Color(4280241739),
      surfaceDim: Color(4292533200),
      surfaceBright: Color(4294572783),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243561),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293454302),
      surfaceContainerHighest: Color(4293059544),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4281485841),
      surfaceTint: Color(4283196971),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4284644671),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4282205743),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4285429854),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279913031),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283399545),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294572783),
      onBackground: Color(4279901206),
      surface: Color(4294572783),
      onSurface: Color(4279901206),
      surfaceVariant: Color(4292994261),
      onSurfaceVariant: Color(4282401849),
      outline: Color(4284309845),
      outlineVariant: Color(4286151792),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282858),
      inverseOnSurface: Color(4294046438),
      inversePrimary: Color(4289909129),
      primaryFixed: Color(4284644671),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283065385),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4285429854),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283785031),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283399545),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281754720),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292533200),
      surfaceBright: Color(4294572783),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243561),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293454302),
      surfaceContainerHighest: Color(4293059544),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4279576320),
      surfaceTint: Color(4283196971),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4281485841),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4280034577),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4282205743),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278200101),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4279913031),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294572783),
      onBackground: Color(4279901206),
      surface: Color(4294572783),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4292994261),
      onSurfaceVariant: Color(4280362268),
      outline: Color(4282401849),
      outlineVariant: Color(4282401849),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282858),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4292343724),
      primaryFixed: Color(4281485841),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4280103424),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4282205743),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280758299),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4279913031),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278203184),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292533200),
      surfaceBright: Color(4294572783),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243561),
      surfaceContainer: Color(4293849059),
      surfaceContainerHigh: Color(4293454302),
      surfaceContainerHighest: Color(4293059544),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4289909129),
      surfaceTint: Color(4289909129),
      onPrimary: Color(4280301057),
      primaryContainer: Color(4281683477),
      onPrimaryContainer: Color(4291751331),
      secondary: Color(4290825132),
      onSecondary: Color(4280955678),
      secondaryContainer: Color(4282403379),
      onSecondaryContainer: Color(4292667335),
      tertiary: Color(4288729291),
      onTertiary: Color(4278204212),
      tertiaryContainer: Color(4280241739),
      onTertiaryContainer: Color(4290571495),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279374862),
      onBackground: Color(4293059544),
      surface: Color(4279374862),
      onSurface: Color(4293059544),
      surfaceVariant: Color(4282665021),
      onSurfaceVariant: Color(4291152058),
      outline: Color(4287599237),
      outlineVariant: Color(4282665021),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059544),
      inverseOnSurface: Color(4281282858),
      inversePrimary: Color(4283196971),
      primaryFixed: Color(4291751331),
      onPrimaryFixed: Color(4279246848),
      primaryFixedDim: Color(4289909129),
      onPrimaryFixedVariant: Color(4281683477),
      secondaryFixed: Color(4292667335),
      onSecondaryFixed: Color(4279639563),
      secondaryFixedDim: Color(4290825132),
      onSecondaryFixedVariant: Color(4282403379),
      tertiaryFixed: Color(4290571495),
      onTertiaryFixed: Color(4278198302),
      tertiaryFixedDim: Color(4288729291),
      onTertiaryFixedVariant: Color(4280241739),
      surfaceDim: Color(4279374862),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045897),
      surfaceContainerLow: Color(4279901206),
      surfaceContainer: Color(4280164378),
      surfaceContainerHigh: Color(4280822564),
      surfaceContainerHighest: Color(4281546286),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4290172301),
      surfaceTint: Color(4289909129),
      onPrimary: Color(4278983168),
      primaryContainer: Color(4286421592),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291088304),
      onSecondary: Color(4279310598),
      secondaryContainer: Color(4287272313),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4288992463),
      onTertiary: Color(4278196761),
      tertiaryContainer: Color(4285241749),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279374862),
      onBackground: Color(4293059544),
      surface: Color(4279374862),
      onSurface: Color(4294704368),
      surfaceVariant: Color(4282665021),
      onSurfaceVariant: Color(4291415230),
      outline: Color(4288783511),
      outlineVariant: Color(4286678392),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059544),
      inverseOnSurface: Color(4280822564),
      inversePrimary: Color(4281814806),
      primaryFixed: Color(4291751331),
      onPrimaryFixed: Color(4278785024),
      primaryFixedDim: Color(4289909129),
      onPrimaryFixedVariant: Color(4280630533),
      secondaryFixed: Color(4292667335),
      onSecondaryFixed: Color(4278916099),
      secondaryFixedDim: Color(4290825132),
      onSecondaryFixedVariant: Color(4281350435),
      tertiaryFixed: Color(4290571495),
      onTertiaryFixed: Color(4278195219),
      tertiaryFixedDim: Color(4288729291),
      onTertiaryFixedVariant: Color(4278730042),
      surfaceDim: Color(4279374862),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045897),
      surfaceContainerLow: Color(4279901206),
      surfaceContainer: Color(4280164378),
      surfaceContainerHigh: Color(4280822564),
      surfaceContainerHighest: Color(4281546286),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294246367),
      surfaceTint: Color(4289909129),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4290172301),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294246367),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291088304),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293591036),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4288992463),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279374862),
      onBackground: Color(4293059544),
      surface: Color(4279374862),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4282665021),
      onSurfaceVariant: Color(4294573293),
      outline: Color(4291415230),
      outlineVariant: Color(4291415230),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293059544),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4279971840),
      primaryFixed: Color(4292014503),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4290172301),
      onPrimaryFixedVariant: Color(4278983168),
      secondaryFixed: Color(4292930507),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291088304),
      onSecondaryFixedVariant: Color(4279310598),
      tertiaryFixed: Color(4290834667),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4288992463),
      onTertiaryFixedVariant: Color(4278196761),
      surfaceDim: Color(4279374862),
      surfaceBright: Color(4281874994),
      surfaceContainerLowest: Color(4279045897),
      surfaceContainerLow: Color(4279901206),
      surfaceContainer: Color(4280164378),
      surfaceContainerHigh: Color(4280822564),
      surfaceContainerHighest: Color(4281546286),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary, 
    required this.surfaceTint, 
    required this.onPrimary, 
    required this.primaryContainer, 
    required this.onPrimaryContainer, 
    required this.secondary, 
    required this.onSecondary, 
    required this.secondaryContainer, 
    required this.onSecondaryContainer, 
    required this.tertiary, 
    required this.onTertiary, 
    required this.tertiaryContainer, 
    required this.onTertiaryContainer, 
    required this.error, 
    required this.onError, 
    required this.errorContainer, 
    required this.onErrorContainer, 
    required this.background, 
    required this.onBackground, 
    required this.surface, 
    required this.onSurface, 
    required this.surfaceVariant, 
    required this.onSurfaceVariant, 
    required this.outline, 
    required this.outlineVariant, 
    required this.shadow, 
    required this.scrim, 
    required this.inverseSurface, 
    required this.inverseOnSurface, 
    required this.inversePrimary, 
    required this.primaryFixed, 
    required this.onPrimaryFixed, 
    required this.primaryFixedDim, 
    required this.onPrimaryFixedVariant, 
    required this.secondaryFixed, 
    required this.onSecondaryFixed, 
    required this.secondaryFixedDim, 
    required this.onSecondaryFixedVariant, 
    required this.tertiaryFixed, 
    required this.onTertiaryFixed, 
    required this.tertiaryFixedDim, 
    required this.onTertiaryFixedVariant, 
    required this.surfaceDim, 
    required this.surfaceBright, 
    required this.surfaceContainerLowest, 
    required this.surfaceContainerLow, 
    required this.surfaceContainer, 
    required this.surfaceContainerHigh, 
    required this.surfaceContainerHighest, 
  });

  final Brightness brightness;
  final Color primary;
  final Color surfaceTint;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color onSecondaryContainer;
  final Color tertiary;
  final Color onTertiary;
  final Color tertiaryContainer;
  final Color onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color errorContainer;
  final Color onErrorContainer;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color surfaceVariant;
  final Color onSurfaceVariant;
  final Color outline;
  final Color outlineVariant;
  final Color shadow;
  final Color scrim;
  final Color inverseSurface;
  final Color inverseOnSurface;
  final Color inversePrimary;
  final Color primaryFixed;
  final Color onPrimaryFixed;
  final Color primaryFixedDim;
  final Color onPrimaryFixedVariant;
  final Color secondaryFixed;
  final Color onSecondaryFixed;
  final Color secondaryFixedDim;
  final Color onSecondaryFixedVariant;
  final Color tertiaryFixed;
  final Color onTertiaryFixed;
  final Color tertiaryFixedDim;
  final Color onTertiaryFixedVariant;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      errorContainer: errorContainer,
      onErrorContainer: onErrorContainer,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
    );
  }
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
