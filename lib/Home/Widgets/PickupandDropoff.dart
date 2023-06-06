import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';
Widget PickUpContainer(String title, String address) {
  return Container(
    height: 80,
    color: PSettings.color2,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 315, top: 15),
          child: Text(
            title,
            style: TextStyle(
              color: PSettings.color8,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 250, top: 8, left: 15),
          child: Text(
            address,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              fontFamily: PFontFamily.sf_ui_display,
            ),
          ),
        )
      ],
    ),
  );
}

Widget DropOffContainer(String title, String address) {
  return Container(
    height: 80,
    color: PSettings.color2,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 315, top: 15),
          child: Text(
            title,
            style: TextStyle(
              color: PSettings.color8,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(
              right: 250,
              top: 8,
              left: 15
          ),
          child: Text(
            address,
            style: TextStyle(
              fontFamily: PFontFamily.sf_ui_display,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
  );
}
