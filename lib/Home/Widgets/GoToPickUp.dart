import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget YellowContainer(String text) {
  return Container(
    height: 78,
    color: PSettings.color4,
    child: Center(
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 17,
            fontFamily: PFontFamily.sf_ui_display),
      ),
    ),
  );
}