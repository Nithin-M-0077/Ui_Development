import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';
import 'package:taxi_service_app/Psvgs.dart';
import 'package:taxi_service_app/ShoppingCartProject/PaymentGatewayWidgets/ApplyCouponCode.dart';
import 'package:taxi_service_app/ShoppingCartProject/PaymentGatewayWidgets/PlaceOrderButton.dart';
import 'package:taxi_service_app/ShoppingCartProject/PaymentGatewayWidgets/PriceDetailsLeftTexts.dart';
import 'package:taxi_service_app/ShoppingCartProject/PaymentGatewayWidgets/PriceDetailsRightTexts.dart';
import 'package:taxi_service_app/ShoppingCartProject/PaymentGatewayWidgets/RadioListTile.dart';
import 'package:taxi_service_app/ShoppingCartProject/PaymentGatewayWidgets/SelectPaymentModeText.dart';

class PaymentGatewayUi extends StatefulWidget {
  const PaymentGatewayUi({Key? key}) : super(key: key);

  @override
  State<PaymentGatewayUi> createState() => _PaymentGatewayUiState();
}

class _PaymentGatewayUiState extends State<PaymentGatewayUi> {
  int selectedRadio = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color1,
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: PSettings.color1,
        title: Text(
          'Payments',
          style: TextStyle(
              letterSpacing: 0.5,
              color: PSettings.color16,
              fontFamily: PFontFamily.sf_ui_display,
              fontSize: 19,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: PSettings.color16,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          CouponCodeContainer('Apply Coupon Code', 'Apply'),
          SizedBox(
            height: 15,
          ),
          const Divider(thickness: 0.1, height: 0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              children: [
                SelectPaymentText(text: 'Select Payment Mode'),
                SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 0.3, height: 0),
                SizedBox(
                  height: 15,
                ),
                RadioList(
                    text: 'Cash on Delivery',
                    value: 1,
                    svgAsset: PSvgs.sv32MS,
                    activeColor: PSettings.color5),
                SizedBox(
                  height: 5,
                ),
                RadioList(
                    text: 'Cash on Delivery',
                    value: 2,
                    svgAsset: PSvgs.sv30MS,
                    activeColor: PSettings.color1),
                SizedBox(
                  height: 5,
                ),
                RadioList(
                    text: 'Pay Online',
                    value: 3,
                    svgAsset: PSvgs.sv31MS,
                    activeColor: PSettings.color1),
                Container(
                  height: 3.5,
                  decoration: BoxDecoration(
                    color: PSettings.color9.withOpacity(1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 260, top: 20),
                  child: Text(
                    'Price Details',
                    style: TextStyle(
                        letterSpacing: 0.3,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: PFontFamily.sf_ui_display),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                const Divider(thickness: 0.3, height: 0),
                Container(
                  height: 170,
                  padding: EdgeInsets.only(left: 25, top: 25, right: 10),
                  child: Row(
                    children: [
                      Expanded(
                          child: PriceDetailsLeftText(
                              title1: 'Sub Total',
                              title2: 'Delivery Charge',
                              title3: 'Amount Payable')),
                      Expanded(
                        child: PriceDetailsRightTexts(
                            text1: 'AED 49.50',
                            text2: 'Free',
                            text3: 'AED 49.50'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          PlaceOrder(text: 'Place Order'),
        ],
      ),
    );
  }
}
