import 'package:flutter/material.dart';

class ButtonPattern extends StatelessWidget{
  final Function()? onPressed;
  final String buttonText;

  ButtonPattern({
    required this.onPressed,
    required this.buttonText
  });

  @override 
  Widget build(BuildContext context) {
    return SizedBox( 
      width: 120,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText),
      ),
      );
  }

}