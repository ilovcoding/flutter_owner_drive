import 'package:flutter/material.dart';
import 'package:flutter_owner_drive/constants.dart';

ThemeData defaultTheme = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: primaryColor,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: primaryLightColor,
      iconColor: primaryColor,
      prefixIconColor: primaryColor,
      contentPadding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none,
      ),
    ));

// const DefalutThemeDart = ThemeData(
//           primaryColor: primaryColor,
//           scaffoldBackgroundColor: Colors.white,
//           elevatedButtonTheme: ElevatedButtonThemeData(
//             style: ElevatedButton.styleFrom(
//               elevation: 0,
//               primary: primaryColor,
//               shape: const StadiumBorder(),
//               maximumSize: const Size(double.infinity, 56),
//               minimumSize: const Size(double.infinity, 56),
//             ),
//           ),
//           inputDecorationTheme: const InputDecorationTheme(
//             filled: true,
//             fillColor: kPrimaryLightColor,
//             iconColor: primaryColor,
//             prefixIconColor: primaryColor,
//             contentPadding: EdgeInsets.symmetric(
//                 horizontal: defaultPadding, vertical: defaultPadding),
//             border: OutlineInputBorder(
//               borderRadius: BorderRadius.all(Radius.circular(30)),
//               borderSide: BorderSide.none,
//             ),
//           )); 