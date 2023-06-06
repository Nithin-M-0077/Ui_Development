import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget PriceDetailsLeftText({required String title1,required String title2,required String title3,}){

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
       title1,
        style: TextStyle(
          fontSize: 15,
          color: PSettings.color8,
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        title2,
        style: TextStyle(
            fontSize: 15,
            color: PSettings.color14,
            fontWeight: FontWeight.w400,
            fontFamily: PFontFamily.sf_ui_display),
      ),
      SizedBox(
        height: 30,
      ),
      DottedLine(
        direction: Axis.horizontal,
        lineLength: double.infinity,
        lineThickness: 1.0,
        dashLength: 4.0,
        dashColor: PSettings.color8,
        dashRadius: 1.0,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
        dashGapRadius: 0.0,
      ),
      SizedBox(
        height: 15,
      ),
      Text(
        title3,
        style: TextStyle(
            fontSize: 15,
            fontFamily: PFontFamily.sf_ui_display),
      ),
    ],
  );

}