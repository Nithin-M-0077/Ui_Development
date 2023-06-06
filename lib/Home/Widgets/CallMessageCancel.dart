import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Psvgs.dart';
Widget BoxContainers() {
  final colors = [PSettings.color10, PSettings.color7, PSettings.color8];
  final children = [
    Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SvgPicture.asset(
            PSvgs.sv22MS,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Call',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: PSettings.color2),
          )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SvgPicture.asset(
            PSvgs.sv21MS,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Message',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: PSettings.color2),
          )
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SvgPicture.asset(
            PSvgs.sv23MS,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Cancel',
            style: TextStyle(
                fontWeight: FontWeight.w600, color: PSettings.color2),
          )
        ],
      ),
    ),
  ];

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: List.generate(
      colors.length,
          (index) => Container(
        width: 100,
        height: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: colors[index],
        ),
        child: children[index],
      ),
    ),
  );
}