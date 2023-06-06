import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/ContinueButton.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/InputField.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/LogoContainer.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/TermsandConditionText.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/TextWidget.dart';

class LetsGetStartedLoginUi extends StatefulWidget {
  const LetsGetStartedLoginUi({Key? key}) : super(key: key);

  @override
  State<LetsGetStartedLoginUi> createState() => _LetsGetStartedLoginUiState();
}

class _LetsGetStartedLoginUiState extends State<LetsGetStartedLoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color2,
      body: ListView(
        children: [
          textWidget(
              text: 'Lets get Started !',
              subtext: 'Create an account to almudabir to get all features'),
          LogoContainer(imagePath: 'asset/images/logoo.png'),
          SizedBox(
            height: 30,
          ),
          InputField(title: 'Username'),
          InputField(title: 'Email'),
          SizedBox(
            height: 10,
          ),
          ContinueButton(label: 'CONTINUE'),
          SizedBox(
            height: 30,
          ),
          TermsandConditionText(
              text1: 'By clicking the continue button you are accepting the ',
              greenText: 'terms and conditions',
              text2: 'of Almudabir.'),
        ],
      ),
    );
  }
}
