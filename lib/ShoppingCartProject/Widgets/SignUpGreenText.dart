import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget SignUpGreenText({
  required String text1,
  required String greenText,
}) {
  return Container(
    child: Center(
      child: RichText(
        text: TextSpan(
          text: text1,
          style: TextStyle(
            letterSpacing: 0.3,
              color: PSettings.color8,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              fontFamily: PFontFamily.sf_ui_display),
          children: <TextSpan>[
            TextSpan(
              text: greenText,
              style: TextStyle(
                color: PSettings.color17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
