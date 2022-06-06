import 'package:flutter/material.dart';

class InputPattern extends StatelessWidget{
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;

  InputPattern({
    required this.label,
    this.userInputController,
    this.onEditingComplete,
  });

  @override 
  Widget build(BuildContext context){
    return TextFormField(
      style: const TextStyle(color: Colors.black),
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }

}