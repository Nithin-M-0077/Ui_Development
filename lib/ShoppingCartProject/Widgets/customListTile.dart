import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget CustomListTile(String title, String imageAssetPath, Color titleColor) {
  return ListTile(
    leading: SizedBox(
      height: 25,
      child: Image(image: AssetImage(imageAssetPath)),
    ),
    title: Text(
      title,
      style: TextStyle(
        color: titleColor,
        fontSize: 15.0,
        fontFamily: PFontFamily.sf_ui_display,
        fontWeight: FontWeight.w600,
      ),
    ),
    onTap: () {
      // Handle tile press
    },
  );
}
