import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 153, 153, 255),
      Color.fromARGB(255, 204, 229, 255),
    ],
    stops: [0.5, 1.0],
  );
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  //static const Color greyBackgroundCOlor = Color(0xffebecee);
  //static var selectedNavBarColor = Colors.cyan[800]!;
  //static const unselectedNavBarColor = Colors.black87;
  static const indicatorTabColor = Colors.white;
  static const drawerHeaderColor = Color.fromARGB(255, 153, 153, 255);
  static const floatingActionButtonColor = Color.fromARGB(255, 102, 102, 255);
}

ThemeData light = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.indigo,
    accentColor: Colors.pink,
    scaffoldBackgroundColor: Color(0xfff1f1f1));

ThemeData dark = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.indigo,
  accentColor: Colors.pink,
);
