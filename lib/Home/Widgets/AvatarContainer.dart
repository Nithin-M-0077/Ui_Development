import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
Widget AvatarContainer(
    String name, String amount, String distance, String text1, String text2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // AvatarBox Container
      Container(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: PSettings.color8,
            ),
          ),
        ),
      ),

      // Text and Tag Containers
      Padding(
        padding: const EdgeInsets.only(right: 120, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Name
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
            ),

            // Discount and Apple Pay Containers
            Row(
              children: [
                // Discount Container
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 15,
                      width: 50,
                      color: PSettings.color4,
                      child: Center(
                        child: Text(
                          text1,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Apple Pay Container
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    height: 15,
                    width: 50,
                    color: PSettings.color4,
                    child: Center(
                      child: Text(
                        text2,
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Amount and Distance
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
            ),
          ),
          Text(
            distance,
            style: TextStyle(
              color: PSettings.color8,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
  );
}