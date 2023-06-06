import 'package:flutter/material.dart';

Widget createRowWidget(String text, String image, String text1, String image1) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(left: 18),
        color: Color(0xFFF2F9FF),
        width: 205,
        height: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 88, child: Image.asset(image)),
          ],
        ),
      ),
      SizedBox(width: 12,),
      Container(
        margin: EdgeInsets.only(left: 25),
        color: Color(0xFFF2F9FF),
        width: 120,
        height: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Text(
                text1,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(height: 80, child: Image.asset(image1)),
          ],
        ),
      ),
    ],
  );
}
