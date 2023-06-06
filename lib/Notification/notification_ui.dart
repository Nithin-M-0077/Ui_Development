import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Psvgs.dart';

class NotificationUi extends StatefulWidget {
  const NotificationUi({Key? key}) : super(key: key);

  @override
  State<NotificationUi> createState() => _NotificationUiState();
}

class _NotificationUiState extends State<NotificationUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color1,
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: PSettings.color2,
        leading: Icon(
          Icons.menu_outlined,
          color: PSettings.color4,
        ),
        title: Text(
          'Notifications',
          style: TextStyle(
            letterSpacing: 0.205,
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: PSettings.color16,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 20,
            color: PSettings.color12,
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    height: 85,
                    color: PSettings.color2,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: PSettings.color15,
                        child: SvgPicture.asset(
                          PSvgs.sv1MS,
                        ),
                        radius: 50,
                      ),
                      title: Text(
                        'System',
                        style: TextStyle(
                          letterSpacing: 0.20,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Booking #1234 has been success..',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 0.5, height: 0),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    height: 80,
                    color: PSettings.color2,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: PSettings.color4,
                        child: SvgPicture.asset(
                          PSvgs.sv3MS,
                        ),
                        radius: 50,
                      ),
                      title: Text(
                        'Promotion',
                        style: TextStyle(
                          letterSpacing: 0.20,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Invite friends - Get 3 coupons each!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 0.5, height: 0),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    height: 80,
                    color: PSettings.color2,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: PSettings.color4,
                        child: SvgPicture.asset(
                          PSvgs.sv3MS,
                        ),
                        radius: 50,
                      ),
                      title: Text(
                        'Promotion',
                        style: TextStyle(
                          letterSpacing: 0.20,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Invite friends - Get 3 coupons each!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 0.5, height: 0),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    height: 80,
                    color: PSettings.color2,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: PSettings.color13,
                        child: SvgPicture.asset(
                          PSvgs.sv2MS,
                        ),
                        radius: 50,
                      ),
                      title: Text(
                        'System',
                        style: TextStyle(
                          letterSpacing: 0.20,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Booking #1205 has been cancelled',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 0.5, height: 0),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    height: 80,
                    color: PSettings.color2,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: PSettings.color10,
                        child: SvgPicture.asset(
                          PSvgs.sv4MS,
                        ),
                        radius: 50,
                      ),
                      title: Text(
                        'System',
                        style: TextStyle(
                          letterSpacing: 0.20,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Thank you! Your transaction is com.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 0.5, height: 0),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Container(
                    height: 80,
                    color: PSettings.color2,
                    child: ListTile(
                      onTap: () {},
                      leading: CircleAvatar(
                        backgroundColor: PSettings.color4,
                        child: SvgPicture.asset(
                          PSvgs.sv3MS,
                        ),
                        radius: 50,
                      ),
                      title: Text(
                        'Promotion',
                        style: TextStyle(
                          letterSpacing: 0.20,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Invite friends - Get 3 coupons each!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
