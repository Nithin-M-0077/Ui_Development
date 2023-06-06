import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/LogoutBox.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/ManagePhoneButtons.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/avatarContainer.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/customListTile.dart';

class MyAccountUi extends StatefulWidget {
  const MyAccountUi({Key? key}) : super(key: key);

  @override
  State<MyAccountUi> createState() => _MyAccountUiState();
}

class _MyAccountUiState extends State<MyAccountUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PSettings.color2,
        elevation: 0.5,
        title: const Text(
          'My Account',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: PSettings.color16,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          AvatarContainer1(
            'Text',
            'test@admin.com',
            'asset/images/background.png',
            'asset/images/userPhoto.png',
          ),
          SizedBox(
            height: 15,
          ),
          ManagePhoneButtons(
            'Manage Address',
            'Phone Number',
            'asset/images/message.png',
            'asset/images/phone.png',
            PSettings.color14,
            PSettings.color14,
            PSettings.color17,
          ),
          SizedBox(
            height: 40,
          ),
          CustomListTile(
            'Settings',
            'asset/images/settings.png',
            PSettings.color16,
          ),
          CustomListTile(
            'Return Policy',
            'asset/images/policy.png',
            PSettings.color16,
          ),
          CustomListTile(
            'Privacy Policy',
            'asset/images/privacy.png',
            PSettings.color16,
          ),
          CustomListTile(
            'Help Center',
            'asset/images/help.png',
            PSettings.color16,
          ),
          SizedBox(
            height: 198,
          ),
          LogoutBox(
            'Log Out',
            PSettings.color17,
            PSettings.color1,
          )
        ],
      ),
    );
  }
}
