import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/button_menu_pattern/button_menu_pattern.dart';
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
        child: Column(
          children: [
            TitlePattern(titleText: 'Home'),
            const SizedBox(height: 40),
            ButtonMenuPattern(
                title: 'Galeria da Nasa',
                cardFunction: () {},
                image: 'assets/images/foguetinho.png'),
            const SizedBox(height: 20),
            ButtonMenuPattern(
                title: 'Gerenciar Viagens',
                cardFunction: () {},
                image: 'assets/images/analysis.png'),
            const SizedBox(height: 20),
            ButtonMenuPattern(
                title: 'Pedido de Drone',
                cardFunction: () {},
                image: 'assets/images/mão.png'),
            const SizedBox(height: 40),
            ButtonMenuPattern(
                title: 'Sair da Conta',
                cardFunction: () {},
                image: 'assets/images/logout.png'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => const AlertDialog(
              title: Text('Pop-up'),
              content: Text('Lorem ipsum...'),
            ),
          );
        },
        child: const Icon(Icons.question_mark, color: Colors.black),
      ),
    );
  }
}
