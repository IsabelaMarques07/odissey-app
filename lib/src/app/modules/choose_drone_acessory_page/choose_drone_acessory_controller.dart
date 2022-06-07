import 'dart:html';

import 'package:flutter/material.dart';

class ChooseDroneAcessoryController extends ChangeNotifier{
  Color card1Color = Colors.transparent;
  Color card2Color = Colors.transparent;
  Color card3Color = Colors.transparent;
  Color card4Color = Colors.transparent;

  bool isCard1Active = false;
  bool isCard2Active = false;
  bool isCard3Active = false;
  bool isCard4Active = false;

  double amount = 540.0;
  int numberCard = 0;


  changeBodyFunction(numberCard){
    changeColor(numberCard);
    notifyListeners();
  }

  changeColor(numberCard){
    switch (numberCard) {
      case 1:
      isCard1Active = !isCard1Active;
        if(isCard1Active){
           card1Color = Color.fromARGB(100, 78, 65, 135);
           amount+= 10.50;
        }else{
          card1Color = Colors.transparent;
           amount-= 10.50;
        }
        break;
      case 2:
        isCard2Active = !isCard2Active;
        if(isCard2Active){
          card2Color = Color.fromARGB(100, 78, 65, 135);
          amount+= 5.0;
        }else{
          card2Color = Colors.transparent;
           amount-= 5.0;
        }
      break;
      case 3:
      isCard3Active = !isCard3Active;
        if(isCard3Active){
          card3Color = Color.fromARGB(100, 78, 65, 135);
          amount+= 5.0;
        }else{
          card3Color = Colors.transparent;
           amount-= 5.0;
        }
        break;
      case 4:
        isCard4Active = !isCard4Active;
        if(isCard4Active){
          card4Color = Color.fromARGB(100, 78, 65, 135);
          amount+= 58.0;
        }else{
          card4Color = Colors.transparent;
           amount-= 58.0;
        }
        break;
      default:
      break;
    }
  }
}