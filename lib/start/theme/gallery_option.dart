import 'package:appnews/shared/constants/dimension_constants.dart';
import 'package:appnews/start/theme/color_scheme.g.dart';
import 'package:flutter/material.dart';

class GalleryOptionTheme {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;
  static const String fontFamily = 'Unbounded';

  static ThemeData lightThemeData = themeData(darkColorScheme);
  static ThemeData darkThemeData = themeData(darkColorScheme);

  /// The theme data for the app
  /// [colorScheme] is the color scheme for the app
  /// [fontFamily] is the font family for the app
  static ThemeData themeData(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colorScheme.background,
      ),
      //TextTheme fonts based on the design. Use textTheme or primaryTextTheme depending on the font size which you need
      //600 - semibold, 300-light, 500-medium, 400-regular
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: 64, fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
        displayMedium: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
        displaySmall: TextStyle(fontSize: 40, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        //
        headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        headlineMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
        headlineSmall: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
        //
        titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        titleMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
        titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
        //
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
        bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        bodySmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
        //
        labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: colorScheme.onPrimary),
        labelMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: colorScheme.onPrimary),
      ),
      primaryTextTheme: TextTheme(
        bodyLarge: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: colorScheme.onPrimary),
        bodyMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        bodySmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
        //
        labelLarge: TextStyle(fontSize: 10, fontWeight: FontWeight.w300, color: colorScheme.onPrimary),
        labelMedium: TextStyle(fontSize: 10, fontWeight: FontWeight.w700, color: colorScheme.onPrimary),
        labelSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
        //
        headlineLarge: TextStyle(fontSize: 36, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
        //
        titleLarge: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, color: colorScheme.onPrimary),
      ),
      focusColor: colorScheme.primary,
      fontFamily: fontFamily,
      primaryColor: colorScheme.primary,
      cardColor: colorScheme.surface,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        foregroundColor: colorScheme.background,
        surfaceTintColor: colorScheme.background,
        iconTheme: IconThemeData(color: colorScheme.secondary),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: colorScheme.primary,
      secondaryHeaderColor: colorScheme.secondary,
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
      ),
      dialogBackgroundColor: colorScheme.surface,
      hintColor: colorScheme.primary.withOpacity(0.3),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      splashColor: Colors.transparent,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return null;
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return null;
        }),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return null;
        }),
        trackColor: MaterialStateProperty.resolveWith<Color?>((Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return null;
          }
          if (states.contains(MaterialState.selected)) {
            return Colors.white;
          }
          return null;
        }),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.background,
        unselectedLabelStyle: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          color: colorScheme.primary,
          fontFamily: fontFamily,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          color: colorScheme.onPrimary,
          fontFamily: fontFamily,
        ),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onPrimary,
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: colorScheme.primary),
      colorScheme: colorScheme,
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: colorScheme.background,
        unselectedLabelTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colorScheme.onSurface,
          fontFamily: fontFamily,
        ),
        unselectedIconTheme: IconThemeData(
          color: colorScheme.onSurface,
          size: 20,
        ),
        selectedIconTheme: IconThemeData(
          color: colorScheme.onPrimary,
          size: 20,
        ),
        selectedLabelTextStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colorScheme.onPrimary,
          fontFamily: fontFamily,
        ),
        useIndicator: true,
        indicatorShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(BorderRadiusConstants.medium)),
      ),
    );
  }
}
