import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget CarrotText() {
  return Padding(
    padding: const EdgeInsets.only(
      left: 40,
      top: 20,
    ),
    child: Text(
      'Carrot',
      style: TextStyle(
        letterSpacing: 0.3,
        fontSize: 22,
        fontFamily: PFontFamily.sf_ui_display,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}