import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/button_menu_pattern/button_menu_pattern.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import 'package:odysseyapp/src/app/modules/choose_drone_acessory_page/choose_drone_accessory_page.dart';
import 'package:odysseyapp/src/app/modules/choose_drone_model_page/choose_drone_model_page.dart';
import 'package:odysseyapp/src/app/modules/info_mars_page/info_mars_page.dart';
import 'package:odysseyapp/src/app/modules/login_page/login_page.dart';
import 'package:odysseyapp/src/app/modules/travels_list_page/travels_list_page.dart';
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
        child: Column(
          children: [
            TitlePattern(titleText: 'Home'),
            const SizedBox(height: 40),
            ButtonMenuPattern(
                title: 'Galeria da Nasa',
                cardFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InfoMarsPage(),
                    ),
                  );
                },
                image: 'assets/images/foguetinho.png'),
            const SizedBox(height: 20),
            ButtonMenuPattern(
                title: 'Gerenciar Viagens',
                cardFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TravelsListPage(),
                    ),
                  );
                },
                image: 'assets/images/analysis.png'),
            const SizedBox(height: 20),
            ButtonMenuPattern(
                cardFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChooseDroneModelPage(),
                    ),
                  );
                },
                title: 'Pedido de Drone',
                image: 'assets/images/mão.png'),
            const SizedBox(height: 40),
            ButtonMenuPattern(
                title: 'Sair da Conta',
                cardFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                image: 'assets/images/logout.png'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Criadoras do Odyssey App'),
              content: Text(
                  'Nome: Danielle Licinio RM: 85715   Nome: Isabela Marques RM: 86386  Turma: 3ºSIR'),
            ),
          );
        },
        child: const Icon(Icons.question_mark, color: Colors.black),
      ),
    );
  }
}
