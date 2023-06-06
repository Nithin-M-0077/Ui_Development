import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Psvgs.dart';

class AcceptInviteUi extends StatefulWidget {
  const AcceptInviteUi({Key? key}) : super(key: key);

  @override
  State<AcceptInviteUi> createState() => _AcceptInviteUiState();
}

class _AcceptInviteUiState extends State<AcceptInviteUi> {
  Widget assetImage() {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle),
      height: 400,
      child: SizedBox(
        child: Transform.scale(
          scale: 0.9,
          child: SvgPicture.asset(
            PSvgs.sv18MS,
          ),
        ),
      ),
    );
  }

  Widget text() {
    return Center(
      child: Text(
        'Reached your Location',
        style: TextStyle(
          color: PSettings.color16,
          letterSpacing: 0.2,
          fontSize: 25,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget text2() {
    return Center(
      child: Text(
        'ENTER CODE',
        style: TextStyle(
            color: PSettings.color8,
            letterSpacing: 0.2,
            fontSize: 15,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget otpSection() {
    return PinCodeTextField(
      appContext: context,
      animationType: AnimationType.scale,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      cursorColor: Colors.black,
      enableActiveFill: true,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.underline,
        fieldHeight: 50,
        fieldWidth: 40,
        inactiveColor: PSettings.color8,
        activeColor: PSettings.color3,
        selectedColor: PSettings.color3,
        activeFillColor: PSettings.color6,
        inactiveFillColor: PSettings.color6,
        selectedFillColor: Colors.white,
      ),
      onChanged: (value) {},
    );
  }

  Widget Acceptbutton() {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: PSettings.color4,
          ),
          child: Text(
            "Accept",
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color2,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          assetImage(),
          const SizedBox(height: 8),
          text(),
          const SizedBox(height: 50),
          text2(),
          const SizedBox(height: 35),
          otpSection(),
          const SizedBox(height: 60),
          Acceptbutton(),
        ],
      ),
    );
  }
}
