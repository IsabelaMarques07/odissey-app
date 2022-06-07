import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/modules/choose_drone_model_page/choose_drone_model_page.dart';
import 'package:odysseyapp/src/app/modules/info_mars_page/info_mars_page.dart';
import 'package:odysseyapp/src/app/modules/travels_list_page/travels_list_page.dart';
import 'package:odysseyapp/src/theme/theme.dart';

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      home: ChooseDroneModelPage(),
      theme: darkTheme,
    );
  }
}