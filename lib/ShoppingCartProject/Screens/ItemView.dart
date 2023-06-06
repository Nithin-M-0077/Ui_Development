import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/CarrotImageContainer.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/CarrotText.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DropdownWithText.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/ProductDescriptionText.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/ProductInfoContainer.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/ScrollContainers.dart';

class ItemViewUi extends StatefulWidget {
  const ItemViewUi({Key? key}) : super(key: key);

  @override
  State<ItemViewUi> createState() => _ItemViewUiState();
}

class _ItemViewUiState extends State<ItemViewUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PSettings.color1,
        appBar: AppBar(
          toolbarHeight: 75,
          backgroundColor: PSettings.color2,
          elevation: 1,
          title: const Text(
            'Item view',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              letterSpacing: 0.1,
            ),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 22,
            ),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 22,
              ),
            )
          ],
        ),



        body: ListView(children: [
          CarrotText(),
          CarrotImage(),
          SizedBox(
            height: 15,
          ),
          ProductDetailsText(),
          SizedBox(
            height: 15,
          ),
          DescriptionText(),
          SizedBox(
            height: 10,
          ),
          DescriptionContainer(),
          SizedBox(
            height: 10,
          ),
          DropDownWithText(),
          SizedBox(
            height: 10,
          ),
          ProductInfoContainer(
            '1 kg',
            'Rs 100',
            "20% off",
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Similar Products',
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: PFontFamily.sf_ui_display,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ScrollContainers(
                    'asset/images/onion.png', 'Onion', '1 kg', '100', '110'),
                ScrollContainers(
                    'asset/images/tomato.png', 'Tomato', '1 kg', '100', '110'),
                ScrollContainers(
                    'asset/images/carrot.png', 'Carrot', '1 kg', '100', '110'),
              ],
            ),
          ),
        ]));
  }
}
