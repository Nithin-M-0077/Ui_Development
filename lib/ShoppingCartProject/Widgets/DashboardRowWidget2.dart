import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget createRowWidget2() {
  return Row(
    children: [
      Expanded(
        child: Container(
          margin: EdgeInsets.only(left: 10),
          color: Color(0xFFF2F9FF),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Cool Drinks',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 100, child: Image.asset('asset/images/drinks.png')),
            ],
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Container(
          color: Color(0xFFF2F9FF),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Frozen Foods',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 100, child: Image.asset('asset/images/frozen.png')),
            ],
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          color: Color(0xFFF2F9FF),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tea,Cofee and health drinks',
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: PFontFamily.sf_ui_display,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 90, child: Image.asset('asset/images/teacofee.png')),
            ],
          ),
        ),
      ),
    ],
  );
}
