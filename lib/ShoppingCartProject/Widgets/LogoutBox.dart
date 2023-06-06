import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget LogoutBox(String buttonText, Color containerColor, Color textColor) {
  return Container(
    margin: EdgeInsets.only(left: 5, right: 5),
    height: 60,
    color: containerColor,
    child: TextButton(
      onPressed: (){},
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: textColor,
            fontFamily: PFontFamily.sf_ui_display,
          ),
        ),
      ),
    ),
  );
}
