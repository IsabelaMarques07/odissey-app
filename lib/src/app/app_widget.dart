import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/modules/login_page/login_page.dart';
import 'package:odysseyapp/src/theme/theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: darkTheme,
    );
  }
}
