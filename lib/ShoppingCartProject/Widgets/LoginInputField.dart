import 'package:flutter/material.dart';

Widget LoginInputField({
  required String title,
  double paddingValue = 16.0,
  double fontSize = 12.0,
  FontWeight fontWeight = FontWeight.w600,
  Color textColor = const Color(0xff838383),
  String fontFamily = 'PFontFamily.sf_ui_display',
  Color backgroundColor = const Color(0xffF2F9FF),
}) {
  return Container(
    margin: EdgeInsets.only(left: 15,right: 15),
    padding: EdgeInsets.all(paddingValue),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: textColor,
            fontFamily: fontFamily,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: backgroundColor,
            border: InputBorder.none, // Remove the border
          ),
        ),
      ],
    ),
  );
}
