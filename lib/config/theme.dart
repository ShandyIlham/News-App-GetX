import 'package:flutter/material.dart';
import 'package:news_app_getx/config/colors.dart';

var lightTheme = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: lightBgColor,
      filled: true,
      enabledBorder: InputBorder.none,
      prefixIconColor: lightLableColor,
      labelStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: lightFontColor,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: lightFontColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      background: lightBgColor,
      onBackground: lightFontColor,
      primaryContainer: lightDivColor,
      onPrimaryContainer: lightFontColor,
      secondaryContainer: lightLableColor,
      primary: lightPrimaryColor,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 25,
        color: lightFontColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      ),
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        color: lightFontColor,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: lightFontColor,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        color: lightFontColor,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: lightFontColor,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 13,
        color: lightFontColor,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 13,
        color: lightFontColor,
        fontWeight: FontWeight.w300,
      ),
    ));
var darkTheme = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: darkBgColor,
      filled: true,
      enabledBorder: InputBorder.none,
      prefixIconColor: darkLableColor,
      labelStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: darkFontColor,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: darkFontColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      background: darkBgColor,
      onBackground: darkFontColor,
      primaryContainer: darkDivColor,
      onPrimaryContainer: darkFontColor,
      secondaryContainer: darkLableColor,
      primary: darkPrimaryColor,
    ),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 25,
        color: darkFontColor,
        fontWeight: FontWeight.w700,
        letterSpacing: 1.5,
      ),
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        color: darkFontColor,
        fontWeight: FontWeight.w600,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: darkFontColor,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 16,
        color: darkFontColor,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        color: darkFontColor,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 13,
        color: darkFontColor,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 13,
        color: darkFontColor,
        fontWeight: FontWeight.w300,
      ),
    ));
