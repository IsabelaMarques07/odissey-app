import 'package:flutter/material.dart';

Map<int, Color> color =
{
  50:Color.fromRGBO(62,137,137, .1),
  100:Color.fromRGBO(62,137,137, .2),
  200:Color.fromRGBO(62,137,137, .3),
  300:Color.fromRGBO(62,137,137, .4),
  400:Color.fromRGBO(62,137,137, .5),
  500:Color.fromRGBO(62,137,137, .6),
  600:Color.fromRGBO(62,137,137, .7),
  700:Color.fromRGBO(62,137,137, .8),
  800:Color.fromRGBO(62,137,137, .9),
  900:Color.fromRGBO(62,137,137, 1),
};

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: MaterialColor(900, color),
  accentColor: const Color.fromARGB(255, 62 , 137, 137),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: MaterialColor(900, color),
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
    titleTextStyle: TextStyle(color:const Color.fromARGB(255, 62 , 137, 137), fontSize: 25),
    backgroundColor: Colors.black,
    iconTheme: IconThemeData(color: const Color.fromARGB(255, 62 , 137, 137)),
  ),
);