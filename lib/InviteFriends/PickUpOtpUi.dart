import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Psvgs.dart';

class InviteFriendsUi extends StatefulWidget {
  const InviteFriendsUi({Key? key}) : super(key: key);

  @override
  State<InviteFriendsUi> createState() => _InviteFriendsUi();
}

class _InviteFriendsUi extends State<InviteFriendsUi> {
  Widget assetImage() {
    return Container(
      decoration:
          BoxDecoration(color: PSettings.color4, shape: BoxShape.circle),
      height: 200,
      child: SizedBox(
        child: Transform.scale(
          scale: 0.4,
          child: SvgPicture.asset(
            PSvgs.sv17MS,
          ),
        ),
      ),
    );
  }

  Widget text() {
    return Container(
      alignment: Alignment.center,
      child: const Text(
        "Invite Friends",
        style: TextStyle(
          letterSpacing: 0.5,
          fontSize: 27,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget text2() {
    return Container(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'Earn up to  ',
          style: TextStyle(
            color: PSettings.color16,
            fontSize: 25,
          ),
          children: [
            TextSpan(
              text: '\$150',
              style: TextStyle(
                color: PSettings.color16,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextSpan(
              text: ' a day',
              style: TextStyle(
                color: PSettings.color16,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Text3() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        height: 120,
        color: PSettings.color2,
        padding: EdgeInsets.symmetric(
          horizontal: 40,
        ),
        alignment: Alignment.center,
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: 'When your friend sign up with your ',
            style: TextStyle(
                color: PSettings.color16,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                letterSpacing: 0.1),
            children: [
              TextSpan(
                text: 'referral code you can receive up to \$150 a day.',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Text4() {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: Text(
        'SHARE YOUR INVITE CODE',
        style: TextStyle(
            color: PSettings.color8, letterSpacing: 0.2, fontSize: 13),
      ),
    );
  }

  Widget button() {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: PSettings.color12,
          ),
          child: Text(
            "0905070017",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }

  Widget button2() {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: PSettings.color4,
          ),
          child: Text(
            "INVITE",
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
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
      appBar: AppBar(
        backgroundColor: PSettings.color2,
        elevation: 1,
        centerTitle: true,
        leading: Icon(
          Icons.menu_outlined,
          color: PSettings.color4,
        ),
        title: Text(
          "Invite Friends",
          style: TextStyle(
              color: PSettings.color16,
              fontWeight: FontWeight.bold,
              fontSize: 17),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 50),
          assetImage(),
          const SizedBox(height: 40),
          text(),
          const SizedBox(height: 5),
          text2(),
          const SizedBox(height: 10),
          Text3(),
          const SizedBox(height: 5),
          Text4(),
          const SizedBox(height: 15),
          button(),
          const SizedBox(height: 20),
          button2(),
        ],
      ),
    );
  }
}
