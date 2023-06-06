import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';

Widget CarrotImage() {
  return Padding(
    padding: const EdgeInsets.only(left: 40, top: 10, right: 40),
    child: Container(
      color: PSettings.color2,
      height: 225,
      width: 225,
      child:
          // SvgPicture.asset(
          //   PSvgs.sv24MS,
          // ),
          Image(
        image: AssetImage('asset/images/carrot.png'),
      ),
    ),
  );
}
