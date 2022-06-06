import 'package:flutter/material.dart';

class InputPattern extends StatelessWidget{
  final String label;
  final Function()? onEditingComplete;
  final TextEditingController? userInputController;
    final FocusNode? focusNode;

  InputPattern({
    required this.label,
    this.userInputController,
    this.onEditingComplete,
    this.focusNode
  });

  @override 
  Widget build(BuildContext context){
    return TextFormField(
       focusNode: focusNode,
      style: const TextStyle(color: Colors.black),
      onEditingComplete: onEditingComplete,
      controller: userInputController,
      decoration: InputDecoration(
        label: Text(label),
      ),
    );
  }

}