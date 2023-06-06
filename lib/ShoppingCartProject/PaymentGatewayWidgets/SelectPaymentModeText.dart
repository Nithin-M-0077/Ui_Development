import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget  SelectPaymentText({required String text}){
  return Padding(
    padding: const EdgeInsets.only(right: 200,top: 10),
    child: Text(
      text,
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          fontFamily: PFontFamily.sf_ui_display),
    ),
  );
}