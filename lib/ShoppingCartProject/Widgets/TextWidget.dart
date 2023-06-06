import 'package:flutter/material.dart';

Widget textWidget({required String text,required String subtext}){
  return  Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 70, left: 25),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Color(0xff296059)),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8, left: 25),
        child: Text(
         subtext,
          style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xff717070)),
        ),
      ),
    ],
  );
}