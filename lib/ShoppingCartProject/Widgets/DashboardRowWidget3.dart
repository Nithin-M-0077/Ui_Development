// ignore: file_names
import 'package:flutter/material.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget createRowWidget3() {
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
                  'Biscuits',
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
                  height: 100, child: Image.asset('asset/images/Biscuits.png')),
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
                  'Sweet tooth',
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
                  height: 100, child: Image.asset('asset/images/sweet.png')),
            ],
          ),
        ),
      ),
      SizedBox(width: 10),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            margin: EdgeInsets.only(right: 4),
            color: Color(0xFFF2F9FF),
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Noodles',
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
                    height: 100,
                    child: Image.asset('asset/images/noodles.png')),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
