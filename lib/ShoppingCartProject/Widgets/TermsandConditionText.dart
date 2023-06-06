import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget TermsandConditionText({
  required String text1,
  required String greenText,
  required String text2,
}) {
  return Container(
    padding: EdgeInsets.only(left: 15, right: 15),
    child: RichText(
      text: TextSpan(
        text: text1,
        style: TextStyle(
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
          TextSpan(
            text: text2,
          ),
        ],
      ),
    ),
  );
}
