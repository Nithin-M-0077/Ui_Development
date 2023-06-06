import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget PlaceOrder({required String text}){
  return  Padding(
    padding:
    const EdgeInsets.only(left: 5, right: 5, top: 170, bottom: 20),
    child: Container(
      height: 50,
      color: PSettings.color15,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 15,
              fontFamily: PFontFamily.sf_ui_display,
              color: PSettings.color1,
              fontWeight: FontWeight.w600),
        ),
      ),
    ),
  );
}