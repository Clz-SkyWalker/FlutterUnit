import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_unit/app/blocs/global/global_state.dart';

class AppTheme {
  static ThemeData darkTheme(AppState state) => ThemeData(
      fontFamily: state.fontFamily,
      brightness: Brightness.dark,
      primaryColor: Color(0xff4699FB),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff222222)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff4699FB)
      ),
      dividerColor: Colors.white,
      // switchTheme: SwitchThemeData(
      //     // trackColor: '',
      //     ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xff181818),
          selectedItemColor: Color(0xff4699FB)),
      scaffoldBackgroundColor: const Color(0xff010201));

  static ThemeData lightTheme(AppState state) {
    SystemUiOverlayStyle overlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark
    );
    return ThemeData(
      fontFamily: state.fontFamily,
      primarySwatch: state.themeColor,
        appBarTheme: AppBarTheme(
            systemOverlayStyle: overlayStyle
        ),
    );
  }
}
