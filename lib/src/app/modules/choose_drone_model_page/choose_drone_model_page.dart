import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/button_pattern/button_pattern.dart';
import 'package:odysseyapp/src/app/components/choose_card/choose_card.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import 'package:odysseyapp/src/app/modules/choose_drone_acessory_page/choose_drone_accessory_page.dart';
import 'package:odysseyapp/src/app/modules/choose_drone_model_page/choose_drone_model_controller.dart';
import '../../utils/export.dart';
class ChooseDroneModelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChooseDroneModelPage();
  }
}

class _ChooseDroneModelPage extends State<ChooseDroneModelPage> {
  final controller = ChooseDroneModelController();

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
                  TitlePattern(titleText: "Escolha o modelo do seu drone"),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      ChooseCard(
                          title: 'DJI Pro',
                          image: 'assets/images/dji_pro.png',
                          color: controller.card1Color,
                          cardFunction: () {
                            controller.changeBodyFunction(1);
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      ChooseCard(
                          title: 'GHS Extreme',
                          image: 'assets/images/ghs_extreme.png',
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
                          title: 'RedPro KL',
                          image: 'assets/images/redpro_kl.png',
                          color: controller.card3Color,
                          cardFunction: () {
                            controller.changeBodyFunction(3);
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      ChooseCard(
                          title: 'BigBug 768',
                          image: 'assets/images/bigbug_768.png',
                          color: controller.card4Color,
                          cardFunction: () {
                            controller.changeBodyFunction(4);
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  ButtonPattern(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChooseDroneAcessoryPage()),
                        );
                      },
                      buttonText: nextButton),
                ],
              ),
            )));
  }
}
