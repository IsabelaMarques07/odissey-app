import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/input_pattern/input_pattern.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import 'package:odysseyapp/src/app/components/travel_card/travel_card.dart';
import 'package:odysseyapp/src/app/models/Travel.dart';

class TravelsListPage extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return _TravelsListPage();
  }
}
class _TravelsListPage extends State<TravelsListPage>{

  List<Travel> travelList = [
    Travel(travelCode: 'CG1678', travelDate: '01/07/2023'),
    Travel(travelCode: 'CG1678', travelDate: '01/07/2023')
  ];

  TextEditingController travelCodeController = TextEditingController();
  TextEditingController travelDateController = TextEditingController();
  FocusNode travelCodeFocus = FocusNode();
  FocusNode travelDateFocus = FocusNode();

  addNewTravel({required String code, required String date}){
    setState(() {
      travelList.insert(0, Travel(travelCode: code, travelDate: date));
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.transparent,
         elevation: 0,
      ),
      body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 45.0,
          right:45.0,
          top: 45.0,
        ),
        child: Column(children: [
          TitlePattern(titleText: "Gerencie suas próximas idas à Marte"),
          const SizedBox(height: 20,),
          InputPattern(
            label:'Código da viagem',
            focusNode: travelCodeFocus,
            userInputController: travelCodeController,
            onEditingComplete: (){
              travelCodeFocus.nextFocus();
            },
          ),
          const SizedBox(height: 15),
          InputPattern(
            label:'Data da viagem',
            focusNode: travelDateFocus,
            userInputController: travelDateController
            ),
          const SizedBox(height: 45),
          Column(children: [
            ListView.separated(
              separatorBuilder: (BuildContext context, int index){
                return const SizedBox(height: 15);
              },
              shrinkWrap: true,
              itemCount: travelList.length,
              itemBuilder: (context, index){
                var listItem = travelList[index];
                return TravelCard(
                travelCode: listItem.travelCode,
                travelDate: "    |    "+listItem.travelDate,
              );
            })
          ],),
        ]
      ),
    )
  ),

  floatingActionButton: FloatingActionButton(
        onPressed: () {
           addNewTravel(code: travelCodeController.text, date: travelDateController.text);
        },
        child: const Icon(Icons.add),
      ),
  );
  }
}