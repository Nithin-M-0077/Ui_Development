import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget CouponCodeContainer(String text1, String text2) {
  return Padding(
    padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
    child: Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: PSettings.color8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                text1,
                style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.3,
                  fontFamily: PFontFamily.sf_ui_display,
                  color: PSettings.color8,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 20,
              width: 60,
              color: PSettings.color12,
              child: Center(
                child: Text(
                  text2,
                  style: TextStyle(
                    fontSize: 13,
                    color: PSettings.color13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
