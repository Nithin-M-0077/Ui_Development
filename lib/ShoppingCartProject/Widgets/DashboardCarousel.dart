import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

Widget createCarouselSlider(String image) {
  return CarouselSlider(
    items: [
      Image.asset(image),
      Image.asset(image),
      Image.asset(image),
    ],
    options: CarouselOptions(
      height: 180.0,
      enlargeCenterPage: true,
      aspectRatio: 16 / 9,
      autoPlay: true,
      onPageChanged: (index, reason) {},
    ),
  );
}