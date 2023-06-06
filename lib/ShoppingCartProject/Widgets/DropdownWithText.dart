import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';

Widget DropDownWithText() {
  return Padding(
    padding: const EdgeInsets.only(left: 40),
    child: Row(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Read more details',
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
            color: PSettings.color14,
          ),
        ),
        Icon(
          Icons.arrow_drop_down,
          color: PSettings.color14,
        ),
      ],
    ),
  );
}
