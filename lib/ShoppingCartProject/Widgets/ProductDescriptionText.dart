import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget ProductDetailsText() {
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Text(
      'Product Details',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: PFontFamily.sf_ui_display,
      ),
    ),
  );
}

Widget DescriptionText(){
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Text(
      'Description',
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          fontFamily: PFontFamily.sf_ui_display),
    ),
  );
}

Widget DescriptionContainer() {
  return Padding(
    padding: const EdgeInsets.only(left: 40, right: 40),
    child: Container(
      height: 100,
      color: PSettings.color1,
      child: Text(
        'The carrot is a biennial plant in the umbellifer family, Apiaceae. At first, it grows a rosette of leaves while building up the enlarged taproot. Fast-growing cultivars mature within three months (90 days) of sowing the seed, while slower-maturing cultivars need a month longer (120 days)',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    ),
  );
}

