import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_service_app/PFontFamily.dart';
import 'package:taxi_service_app/Psvgs.dart';

Widget RadioList(
    {required String text,
    required int value,
    required String svgAsset,
    required Color activeColor}) {
  int selectedRadio = 1;

  return RadioListTile(
    activeColor: activeColor,
    value: value,
    groupValue: selectedRadio,
    onChanged: (val) {},
    title: Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 14,
              fontFamily: PFontFamily.sf_ui_display,
              fontWeight: FontWeight.w500),
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SvgPicture.asset(
            svgAsset,
          ),
        ),
      ],
    ),
  );
}
