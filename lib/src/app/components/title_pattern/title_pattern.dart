import 'package:flutter/material.dart';

class TitlePattern extends StatelessWidget {
  String titleText = "";

  TitlePattern({required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: const TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
    );
  }
}
