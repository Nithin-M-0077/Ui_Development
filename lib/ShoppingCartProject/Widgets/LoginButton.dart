import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget LoginButton({required String label}){
  return  Container(
    margin: EdgeInsets.only(left: 28, right: 28),
    height: 50,
    color: Color(0xff2EB34A),
    child: TextButton(
      onPressed: () {},
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            letterSpacing: 0.5,
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: PSettings.color2,
            fontFamily: PFontFamily.sf_ui_display,
          ),
        ),
      ),
    ),
  );
}