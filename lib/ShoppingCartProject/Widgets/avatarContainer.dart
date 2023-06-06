import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget AvatarContainer1(String text, String email, String backgroundImagePath,
    String userPhotoPath) {
  return Container(
    height: 125,
    margin: EdgeInsets.only(left: 10, right: 10, top: 15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      image: DecorationImage(
        image: AssetImage(backgroundImagePath),
        fit: BoxFit.cover,
      ),
    ),
    padding: EdgeInsets.all(16.0),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontFamily: PFontFamily.sf_ui_display,
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: PFontFamily.sf_ui_display,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 16.0),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 40.0,
          backgroundImage: AssetImage(userPhotoPath),
        ),
      ],
    ),
  );
}
