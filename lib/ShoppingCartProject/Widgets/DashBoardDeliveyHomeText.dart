import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget textWidget() {
  return SafeArea(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 120),
          child: Text(
            'Delivery in 9 Minutes',
            style: TextStyle(
                color: PSettings.color16,
                fontWeight: FontWeight.w600,
                fontSize: 19,
                fontFamily: PFontFamily.sf_ui_display),
          ),
        ),
        Row(
          children: [
            Text(
              'Home - Nandhanamhouse.......',
              style: TextStyle(
                fontSize: 14,
                fontFamily: PFontFamily.sf_ui_display,
                color: PSettings.color8,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: PSettings.color8,
            ),
          ],
        ),
      ],
    ),
  );
}
