import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/button_pattern/button_pattern.dart';
import 'package:odysseyapp/src/app/components/choose_card/choose_card.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import 'package:odysseyapp/src/app/modules/choose_drone_acessory_page/choose_drone_acessory_controller.dart';
import 'package:odysseyapp/src/app/modules/order_made_page/order_made_page.dart';

class ChooseDroneAcessoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChooseDroneAcessoryPage();
  }
}

class _ChooseDroneAcessoryPage extends State<ChooseDroneAcessoryPage> {
  final controller = ChooseDroneAcessoryController();

  @override
  void initState() {
    super.initState();
    controller.changeColor(0);
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.only(
              left: 40,
              right: 40,
              top: 40,
            ),
            child: Container(
              child: Column(
                children: [
                  TitlePattern(titleText: "Escolha acessórios para seu drone"),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ChooseCard(
                          title: 'LED Gamer',
                          image: 'assets/images/led_gamer.png',
                          color: controller.card1Color,
                          cardFunction: () {
                            controller.changeBodyFunction(1);
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      ChooseCard(
                          title: 'Adesivos',
                          image: 'assets/images/adesivos.png',
                          color: controller.card2Color,
                          cardFunction: () {
                            controller.changeBodyFunction(2);
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ChooseCard(
                          title: 'Chaveiros',
                          image: 'assets/images/chaveiro.png',
                          color: controller.card3Color,
                          cardFunction: () {
                            controller.changeBodyFunction(3);
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      ChooseCard(
                          title: 'Pintura Herói',
                          image: 'assets/images/heroi.png',
                          color: controller.card4Color,
                          cardFunction: () {
                            controller.changeBodyFunction(4);
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Text(
                    'Valor total: R\$' + controller.amount.toString(),
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 30),
                  ButtonPattern(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderMadePage()),
                        );
                      },
                      buttonText: 'Finalizar'),
                ],
              ),
            )));
  }
}
