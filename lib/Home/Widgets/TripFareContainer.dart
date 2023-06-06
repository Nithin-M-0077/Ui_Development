import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';
Widget TripFairContainer(
    String title, List<String> leftTexts, List<String> rightTexts) {
  return Container(
    color: PSettings.color2,
    padding: EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 13,
                      color: PSettings.color8,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10),
                for (var text in leftTexts) ...[
                  SizedBox(height: 10),
                  Text(
                    text,
                    style: TextStyle(
                        fontFamily: PFontFamily.sf_ui_display,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (var text in rightTexts) ...[
                  SizedBox(height: 10),
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: PFontFamily.sf_ui_display,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
    ),
  );
}