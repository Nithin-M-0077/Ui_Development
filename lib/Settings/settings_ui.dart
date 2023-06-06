import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Psvgs.dart';

class SettingsUi extends StatefulWidget {
  const SettingsUi({Key? key}) : super(key: key);

  @override
  State<SettingsUi> createState() => _SettingsUiState();
}

class _SettingsUiState extends State<SettingsUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color1,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 25,
          color: PSettings.color4,
        ),
        backgroundColor: PSettings.color1,
        elevation: 1,
        title: Text(
          'Settings',
          style: TextStyle(
            color: PSettings.color16,
            fontSize: 17,
            letterSpacing: 0.205,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              height: 75,
              color: Colors.white70,
              child: ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: PSettings.color8,
                  radius: 45,
                ),
                title: Text(
                  'Martha Banks',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
                subtitle: Text(
                  'Gold Member',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: GoogleFonts.roboto().fontFamily,
                  ),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
            ),
          ),
          //),
          const Divider(thickness: 0.5, height: 0),
          Container(
            height: 20,
            width: 40,
            color: PSettings.color12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color5,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv9MS,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Vehicle Management',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
              const Divider(thickness: 0.5, height: 0),
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color14,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv10MS,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Document Management',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),

              ),
              const Divider(thickness: 0.5, height: 0),
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color4,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv11MS,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
              const Divider(thickness: 0.5, height: 0),
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color7,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv12MS,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Language',
                  style: TextStyle(fontSize: 17),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
            ],
          ),
          Container(
            height: 20,
            width: 40,
            color: PSettings.color12,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color15,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv16MS,
                    height: 25,
                    color: Colors.white,
                  ),

                ),
                title: Text(
                  'Notification',
                  style: TextStyle(fontSize: 17),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
              const Divider(thickness: 0.5, height: 0),
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color8,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv13MS,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Terms & Privacy Policy',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
              const Divider(thickness: 0.5, height: 0),
              ListTile(
                onTap: () {},
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: PSettings.color13,
                  ),
                  child: SvgPicture.asset(
                    PSvgs.sv14MS,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 17),
                ),
                trailing: SvgPicture.asset(PSvgs.sv8MS),
              ),
              const Divider(thickness: 0.5, height: 0),
            ],
          ),
        ],
      ),
    );
  }
}
