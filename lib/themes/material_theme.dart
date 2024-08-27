import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4281428545),
      surfaceTint: Color(4281428545),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4290048446),
      onPrimaryContainer: Color(4278198540),
      secondary: Color(4283458386),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4292077779),
      onSecondaryContainer: Color(4279115538),
      tertiary: Color(4282017134),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4290636533),
      onTertiaryContainer: Color(4278198053),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294376435),
      onSurface: Color(4279770392),
      onSurfaceVariant: Color(4282468673),
      outline: Color(4285626736),
      outlineVariant: Color(4290890175),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152045),
      inversePrimary: Color(4288205987),
      primaryFixed: Color(4290048446),
      onPrimaryFixed: Color(4278198540),
      primaryFixedDim: Color(4288205987),
      onPrimaryFixedVariant: Color(4279718188),
      secondaryFixed: Color(4292077779),
      onSecondaryFixed: Color(4279115538),
      secondaryFixedDim: Color(4290235575),
      onSecondaryFixedVariant: Color(4281944891),
      tertiaryFixed: Color(4290636533),
      onTertiaryFixed: Color(4278198053),
      tertiaryFixedDim: Color(4288859864),
      onTertiaryFixedVariant: Color(4280307030),
      surfaceDim: Color(4292336596),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047213),
      surfaceContainer: Color(4293652455),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863196),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4279323944),
      surfaceTint: Color(4281428545),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4282941526),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281681720),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284905832),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279978322),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283464581),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294376435),
      onSurface: Color(4279770392),
      onSurfaceVariant: Color(4282205501),
      outline: Color(4284047705),
      outlineVariant: Color(4285889908),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152045),
      inversePrimary: Color(4288205987),
      primaryFixed: Color(4282941526),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281296703),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284905832),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283326800),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4283464581),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4281819756),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336596),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047213),
      surfaceContainer: Color(4293652455),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863196),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200592),
      surfaceTint: Color(4281428545),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4279323944),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279510552),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281681720),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4278199853),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4279978322),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294376435),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280165919),
      outline: Color(4282205501),
      outlineVariant: Color(4282205501),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281152045),
      inversePrimary: Color(4290640839),
      primaryFixed: Color(4279323944),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203671),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281681720),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4280234274),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4279978322),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4278202938),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292336596),
      surfaceBright: Color(4294376435),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294047213),
      surfaceContainer: Color(4293652455),
      surfaceContainerHigh: Color(4293257954),
      surfaceContainerHighest: Color(4292863196),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288205987),
      surfaceTint: Color(4288205987),
      onPrimary: Color(4278204697),
      primaryContainer: Color(4279718188),
      onPrimaryContainer: Color(4290048446),
      secondary: Color(4290235575),
      onSecondary: Color(4280497190),
      secondaryContainer: Color(4281944891),
      onSecondaryContainer: Color(4292077779),
      tertiary: Color(4288859864),
      onTertiary: Color(4278269503),
      tertiaryContainer: Color(4280307030),
      onTertiaryContainer: Color(4290636533),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279244048),
      onSurface: Color(4292863196),
      onSurfaceVariant: Color(4290890175),
      outline: Color(4287337354),
      outlineVariant: Color(4282468673),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863196),
      inversePrimary: Color(4281428545),
      primaryFixed: Color(4290048446),
      onPrimaryFixed: Color(4278198540),
      primaryFixedDim: Color(4288205987),
      onPrimaryFixedVariant: Color(4279718188),
      secondaryFixed: Color(4292077779),
      onSecondaryFixed: Color(4279115538),
      secondaryFixedDim: Color(4290235575),
      onSecondaryFixedVariant: Color(4281944891),
      tertiaryFixed: Color(4290636533),
      onTertiaryFixed: Color(4278198053),
      tertiaryFixedDim: Color(4288859864),
      onTertiaryFixedVariant: Color(4280307030),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678389),
      surfaceContainerLowest: Color(4278914827),
      surfaceContainerLow: Color(4279770392),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691494),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288469415),
      surfaceTint: Color(4288205987),
      onPrimary: Color(4278197001),
      primaryContainer: Color(4284783985),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290498747),
      onSecondary: Color(4278721037),
      secondaryContainer: Color(4286748291),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4289123037),
      onTertiary: Color(4278196511),
      tertiaryContainer: Color(4285372578),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279244048),
      onSurface: Color(4294507764),
      onSurfaceVariant: Color(4291153347),
      outline: Color(4288521628),
      outlineVariant: Color(4286416252),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863196),
      inversePrimary: Color(4279783981),
      primaryFixed: Color(4290048446),
      onPrimaryFixed: Color(4278195462),
      primaryFixedDim: Color(4288205987),
      onPrimaryFixedVariant: Color(4278206237),
      secondaryFixed: Color(4292077779),
      onSecondaryFixed: Color(4278457608),
      secondaryFixedDim: Color(4290235575),
      onSecondaryFixedVariant: Color(4280826411),
      tertiaryFixed: Color(4290636533),
      onTertiaryFixed: Color(4278195224),
      tertiaryFixedDim: Color(4288859864),
      onTertiaryFixedVariant: Color(4278860869),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678389),
      surfaceContainerLowest: Color(4278914827),
      surfaceContainerLow: Color(4279770392),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691494),
      surfaceContainerHighest: Color(4281415217),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293918702),
      surfaceTint: Color(4288205987),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4288469415),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293918702),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290498747),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294180095),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4289123037),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279244048),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294311410),
      outline: Color(4291153347),
      outlineVariant: Color(4291153347),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292863196),
      inversePrimary: Color(4278202901),
      primaryFixed: Color(4290311618),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4288469415),
      onPrimaryFixedVariant: Color(4278197001),
      secondaryFixed: Color(4292341207),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290498747),
      onSecondaryFixedVariant: Color(4278721037),
      tertiaryFixed: Color(4290965241),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4289123037),
      onTertiaryFixedVariant: Color(4278196511),
      surfaceDim: Color(4279244048),
      surfaceBright: Color(4281678389),
      surfaceContainerLowest: Color(4278914827),
      surfaceContainerLow: Color(4279770392),
      surfaceContainer: Color(4280033564),
      surfaceContainerHigh: Color(4280691494),
      surfaceContainerHighest: Color(4281415217),
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
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
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
