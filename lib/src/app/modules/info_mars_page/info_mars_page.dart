import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/TitlePattern/title_pattern.dart';
import 'package:odysseyapp/src/app/components/input_pattern/input_pattern.dart';
import 'package:odysseyapp/src/app/modules/info_mars_page/info_mars_controller.dart';

class InfoMarsPage extends StatefulWidget{
  @override 
  State<StatefulWidget> createState(){
    return _InfoMarsPage();
  }
}

class _InfoMarsPage extends State<InfoMarsPage>{
  final controller = InfoMarsController();
  TextEditingController termController = TextEditingController();
  @override 
  void initState(){
    super.initState();
    controller.fetchNasaData('rocket');
    controller.addListener(() {
      setState(() {
        
      });
    });
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
          body: Padding(padding: const EdgeInsets.only(
          left: 40,
          right: 40,
          top: 40,
        ),
        child: Container( 
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: 500,
          child: SingleChildScrollView(child: Column(children: [
            TitlePattern(titleText: "Galeria de imagens da NASA"),
            const SizedBox(height: 20,),
            InputPattern(label: 'Digite um termo. Ex: "rocket"', userInputController: termController,),
            const SizedBox(height: 20,),
            Image.network(controller.imageUrl, width: 300,
                        fit:BoxFit.fill),
            const SizedBox(height: 20,),
            Text(controller.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),
            const SizedBox(height: 20,),
            Text(controller.description),
      ],
          )

      ),
        
      )
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
        controller.changeBodyFunction(termController.text);
        },
        backgroundColor: const Color.fromARGB(255, 62, 137, 137) ,
        child: const Icon(Icons.add, color: Colors.black),
        ),
    );
    
  }
}