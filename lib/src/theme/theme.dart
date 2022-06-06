import 'package:flutter/material.dart';

const _primarySwatch = Colors.cyan;
const _appBarColor =Colors.cyan;
const _appBarTextColor = Colors.black;
const _appBarIconColor = Colors.black;

const _inputBorderColor = Colors.black;


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: _primarySwatch,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: Colors.cyan,
      onPrimary: Color.fromARGB(255, 30 , 30, 30),
    ),
  ),
    inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    labelStyle: TextStyle(color: Colors.black),
    fillColor:  Color.fromARGB(255,217 , 217, 217),
    focusColor: Colors.black,
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide.none),
  ),
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.cyan, fontSize: 25),
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: Colors.cyan),
  ),
);