import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget{
  final String travelCode;
  final String travelDate;


  TravelCard({required this.travelCode, required this.travelDate});

  @override 
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color.fromARGB(255, 78, 65, 135), width: 2)
      ),
      height: 60,
      child: Row(
        children: [
          SizedBox(width: 15,),
          Icon(Icons.rocket_launch, color:const Color.fromARGB(255, 62 , 137, 137),),
          SizedBox(width: 15,),
          Text(travelCode),
          Text(travelDate)
        ],
        ),
    );
  }
}