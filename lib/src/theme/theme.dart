import 'package:flutter/material.dart';


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  accentColor: const Color.fromARGB(255, 62 , 137, 137),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary:Color.fromRGBO(62,137,137, 1),
      onPrimary: Colors.black,
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
    titleTextStyle: TextStyle(color:const Color.fromARGB(255, 62 , 137, 137), fontSize: 25),
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: const Color.fromARGB(255, 62 , 137, 137)),
  ),
);