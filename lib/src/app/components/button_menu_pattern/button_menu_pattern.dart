import 'package:flutter/material.dart';

class ButtonMenuPattern extends StatelessWidget {
  final String title;
  final String image;
  final Function()? cardFunction;

  ButtonMenuPattern(
      {required this.title, required this.cardFunction, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color.fromARGB(255, 78, 65, 135), width: 2),
        ),
        height: 50,
        width: 300,
        child: Row(
          children: [
            SizedBox(
              height: 15,
            ),
            Image.asset(image),
            SizedBox(
              height: 15,
            ),
            Text(title),
          ],
        ),
      ),
      onTap: cardFunction,
    );
  }
}
