import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';
Widget NotedContainer(String title, String content) {
  return Container(
    color: PSettings.color2,
    padding: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            title,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: PSettings.color8),
          ),
        ),
        SizedBox(height: 5),
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 6),
          child: Text(
            content,
            style: TextStyle(
                fontSize: 16,
                letterSpacing: 0.3,
                fontFamily: PFontFamily.sf_ui_display),
          ),
        ),
      ],
    ),
  );
}
