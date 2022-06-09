import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/button_pattern/button_pattern.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import 'package:odysseyapp/src/app/modules/home/home_page.dart';

class OrderMadePage extends StatelessWidget {
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
            child: Column(children: [
              Image.asset('assets/images/order_made.png',
                  width: 300, fit: BoxFit.fill),
              const SizedBox(
                height: 20,
              ),
              TitlePattern(
                titleText: 'Pedido realizado com sucesso!',
              ),
              const SizedBox(
                height: 20,
              ),
              ButtonPattern(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  buttonText: 'Tela Inicial'),
            ]),
          ),
        ));
  }
}
