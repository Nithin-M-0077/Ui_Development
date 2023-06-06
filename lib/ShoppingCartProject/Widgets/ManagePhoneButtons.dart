import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget ManagePhoneButtons(String buttonText1, String buttonText2, String imageAssetPath1, String imageAssetPath2, Color buttonColor, Color borderColor, Color textColor) {
  return Padding(
    padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
    child: Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: borderColor,
                width: 1.5, // Border width
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(imageAssetPath1)),
                  SizedBox(width: 8.0),
                  Text(
                    buttonText1,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 12,
                      fontFamily: PFontFamily.sf_ui_display,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 16.0),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: borderColor,
                width: 1.5, // Border width
              ),
            ),
            child: TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage(imageAssetPath2)),
                  SizedBox(width: 8.0),
                  Text(
                    buttonText2,
                    style: TextStyle(
                      fontSize: 12,
                      color: textColor,
                      fontFamily: PFontFamily.sf_ui_display,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
