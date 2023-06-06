import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget SearchForProduct({required String text}){
  return  Padding(
    padding: const EdgeInsets.only(left: 18, right: 18),
    child: Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: PSettings.color8),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 5),
            child: Icon(
              Icons.search,
              color: PSettings.color8,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 10,
                  color: PSettings.color8,
                  fontWeight: FontWeight.w700,
                  fontFamily: PFontFamily.sf_ui_display
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}