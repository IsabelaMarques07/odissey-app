import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/modules/info_mars_page/info_mars_page.dart';
import 'package:odysseyapp/src/theme/theme.dart';

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: InfoMarsPage(),
      theme: darkTheme,
    );
  }
}