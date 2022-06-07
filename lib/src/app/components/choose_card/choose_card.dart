import 'package:flutter/material.dart';

class ChooseCard extends StatelessWidget{
  final String title;
  final String image;
  final Color? color;
  final Function()? cardFunction;


  ChooseCard({required this.title, required this.image, this.color, required this.cardFunction});

  @override 
  Widget build(BuildContext context){
    return GestureDetector(child:
    Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 78, 65, 135), width: 2),
        color: color ?? Colors.transparent,
      ),
      height: 130,
      width: 130,
      child: Column(
        children: [
          SizedBox(height: 15,),
          Image.asset(image),
          SizedBox(height: 15,),
          Text(title),
        ],
        ),
    ),
    onTap: cardFunction
    ,) ;
  }
}