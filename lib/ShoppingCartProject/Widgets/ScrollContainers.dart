import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

Widget ScrollContainers(String imageUrl, String title, String weight,
    String price, String discountPrice) {
  return Padding(
    padding: const EdgeInsets.only(left: 15),
    child: Container(
      decoration: BoxDecoration(
        color: PSettings.color2,
        borderRadius: BorderRadius.circular(15), // Updated border radius
      ),
      width: 165,
      height: 210, // Updated height
      child: Column(
        children: [
          Container(
            height: 30,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Padding(
                padding: const EdgeInsets.only(right: 100,top: 3),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: PSettings.color17,
                  ),
                  child: Text(
                    '20% off',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 1, right: 20,top: 5),
            child: SizedBox(
              height: 75,
              child: Image(
                image: AssetImage(imageUrl),
                //height: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 95),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: PFontFamily.sf_ui_display,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 120),
            child: Text(
              weight,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      'Rs $price',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 33,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: PSettings.color15,
                        ),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent,
                        ),
                        child: Text(
                          'ADD',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: RichText(
                  text: TextSpan(
                    text: 'Rs ',
                    style: TextStyle(
                      fontSize: 10,
                      color: PSettings.color8,
                      fontWeight: FontWeight.w500,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: discountPrice,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
