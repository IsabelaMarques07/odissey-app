import 'package:flutter/material.dart';

class ChooseDroneModelController extends ChangeNotifier{
  Color card1Color = Colors.transparent;
  Color card2Color = Colors.transparent;
  Color card3Color = Colors.transparent;
  Color card4Color = Colors.transparent;
  int numberCard = 0;


  changeBodyFunction(numberCard){
    changeColor(numberCard);
    notifyListeners();
  }

  changeColor(numberCard){
    switch (numberCard) {
      case 1:
        card1Color = Color.fromARGB(100, 78, 65, 135);
        card2Color = Colors.transparent;
        card3Color = Colors.transparent;
        card4Color = Colors.transparent;
        break;
      case 2:
        card2Color = Color.fromARGB(100, 78, 65, 135);
        card1Color = Colors.transparent;
        card3Color = Colors.transparent;
        card4Color = Colors.transparent;
      break;
      case 3:
        card3Color = Color.fromARGB(100, 78, 65, 135);
        card2Color = Colors.transparent;
        card1Color = Colors.transparent;
        card4Color = Colors.transparent;
        break;
      case 4:
        card4Color = Color.fromARGB(100, 78, 65, 135);
        card2Color = Colors.transparent;
        card3Color = Colors.transparent;
        card1Color = Colors.transparent;
        break;
      default:
      break;
    }
  }
}