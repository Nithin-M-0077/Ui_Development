import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget FacebookGoogleButton({required String text, required String svgAsset}) {
  return Container(
    margin: EdgeInsets.only(left: 27, right: 27),
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color(0xffd5d5d5),
      ),
    ),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SvgPicture.asset(
            svgAsset,
            width: 24,
            height: 24,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 13.0,
              color: Color(0xff757575),
              fontFamily: PFontFamily.sf_ui_display,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    ),
  );
}
