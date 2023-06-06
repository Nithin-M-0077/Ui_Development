import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';

Widget ProductInfoContainer(String weight, String price, String discount) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Text(
          weight,
          style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10),
        ),
      ),
      SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 25,
              width: 55,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(3),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: PSettings.color17,
                  ),
                  child: Text(
                    discount,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 10),
              child: Container(
                height: 35,
                width: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: PSettings.color15,
                    ),
                    child: Text(
                      "ADD",
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 40,),
        child: RichText(
          text: TextSpan(
            text: 'Rs ',
            style: TextStyle(
              fontSize: 12,
              color: PSettings.color8,
              fontWeight: FontWeight.w500,
            ),
            children: <TextSpan>[
              TextSpan(
                text: '110',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
