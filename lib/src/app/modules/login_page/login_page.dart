import 'package:flutter/material.dart';
import 'package:odysseyapp/src/app/components/button_pattern/button_pattern.dart';
import 'package:odysseyapp/src/app/components/input_pattern/input_pattern.dart';
import 'package:odysseyapp/src/app/components/title_pattern/title_pattern.dart';
import 'package:odysseyapp/src/app/modules/home/home_page.dart';
import '../../utils/export.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: AppPaddings.borderPadding,
          right: AppPaddings.borderPadding,
          top: AppPaddings.topPadding,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/foguete.png',
              ),
              const SizedBox(
                height: 30,
              ),
              TitlePattern(
                titleText: nameApp,
              ),
              const SizedBox(height: 15),
              InputPattern(label: eMail),
              const SizedBox(height: 15),
              InputPattern(label: password),
              const SizedBox(height: 15),
              ButtonPattern(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  buttonText: login),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
