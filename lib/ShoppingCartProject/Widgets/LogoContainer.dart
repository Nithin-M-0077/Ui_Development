import 'package:flutter/material.dart';

Widget LogoContainer({required String imagePath, double topMargin = 50, double containerHeight = 100}) {
  return Container(
    margin: EdgeInsets.only(top: topMargin),
    height: containerHeight,
    child: Image(
      image: AssetImage(imagePath),
    ),
  );
}
