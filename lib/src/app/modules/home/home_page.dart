import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import '../../utils/export.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.only(
            left: AppPaddings.borderPadding,
            right: AppPaddings.borderPadding,
            top: AppPaddings.topPadding,
          ),
          child: Container(child: Column(children: [
            TitlePattern(titleText: 'Home'),
          ],),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
       
        },
        child: const Icon(Icons.question_mark, color: Colors.black),
        ),
    );
  }
}
