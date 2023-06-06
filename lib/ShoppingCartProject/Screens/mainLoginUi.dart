import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';
import 'package:taxi_service_app/Psvgs.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/FacebookGoogleButton.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/LoginButton.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/LoginInputField.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/PasswordInputField.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/SignUpGreenText.dart';

class MainLoginUi extends StatefulWidget {
  const MainLoginUi({Key? key}) : super(key: key);

  @override
  State<MainLoginUi> createState() => _MainLoginUiState();
}

class _MainLoginUiState extends State<MainLoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color2,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 27),
                child: Text(
                  'Login',
                  style: TextStyle(
                      letterSpacing: 0.5,
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      color: PSettings.color16,
                      fontFamily: PFontFamily.sf_ui_display),
                ),
              ),
              SizedBox(height: 50,),
              LoginInputField(title: 'Email ID/Username'),
              PasswordInputField(title: 'Password'),
              SizedBox(height: 15,),
              LoginButton(label: 'LOGIN'),
              SizedBox(height: 15,),
              SignUpGreenText(text1: 'Doesn’t Have an Account ?', greenText: 'Sign Up'),
              SizedBox(height: 25,),
              Center(child: Text(
                  'OR',
                  style: TextStyle(
                      letterSpacing: 0.4,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff757575),
                      fontFamily: PFontFamily.sf_ui_display),
                ),),
              SizedBox(height: 10,),
              FacebookGoogleButton(text: 'Login with Facebook', svgAsset: PSvgs.sv37MS,),
              SizedBox(height: 30,),
              FacebookGoogleButton(text: 'Login with Google', svgAsset: PSvgs.sv36MS,),
            ],
          ),
        ],
      ),
    );
  }
}
