import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/PFontFamily.dart';

class HomeSwipeUi extends StatefulWidget {
  const HomeSwipeUi({Key? key, required this.isOnline}) : super(key: key);
  final bool isOnline;

  @override
  State<HomeSwipeUi> createState() => _HomeSwipeUiState();
}

class _HomeSwipeUiState extends State<HomeSwipeUi> {
  Widget NotificationContainer() {
    return Container(
      height: 50,
      color: PSettings.color17,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 45),
          child: Text(
            'You have 10 new requests.',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: PSettings.color1,
                fontFamily: PFontFamily.sf_ui_display),
          ),
        ),
      ),
    );
  }

  Widget AvatarBox(String name, String amount, String distance) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Container(
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: PSettings.color8,
              ),
            ),
          ),
        ),
        const Divider(thickness: 0.8, height: 0),
        Padding(
          padding: const EdgeInsets.only(right: 140),
          child: Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
                fontFamily: PFontFamily.sf_ui_display),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                ),
              ),
              Text(
                distance,
                style: TextStyle(
                  color: PSettings.color8,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget TagContainer(String text1, String text2) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 75),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 15,
              width: 60,
              color: PSettings.color4,
              child: Center(
                child: Text(
                  text1,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              height: 15,
              width: 60,
              color: PSettings.color4,
              child: Center(
                child: Text(
                  text2,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget PickUpContainer(String title, String address) {
    return Container(
      height: 80,
      color: PSettings.color2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 315, top: 15),
            child: Text(
              title,
              style: TextStyle(
                color: PSettings.color8,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250, top: 8, left: 10),
            child: Text(
              address,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: PFontFamily.sf_ui_display,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget DropOffContainer(String title, String address) {
    return Container(
      height: 80,
      color: PSettings.color2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 315, top: 15),
            child: Text(
              title,
              style: TextStyle(
                color: PSettings.color8,
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 250,
              top: 8,
            ),
            child: Text(
              address,
              style: TextStyle(
                fontFamily: PFontFamily.sf_ui_display,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget Button(String rejectLabel, String acceptLabel) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 50,
            width: 200,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                side: BorderSide(color: PSettings.color8, width: 0.8),
                backgroundColor: PSettings.color1,
              ),
              child: Text(
                rejectLabel,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            height: 50,
            width: 200,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                side: BorderSide(color: PSettings.color8, width: 0.8),
                backgroundColor: PSettings.color4,
              ),
              child: Text(
                acceptLabel,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCustomAppBar(Color iconColor) {
    return AppBar(
      toolbarHeight: 75,
      backgroundColor: PSettings.color2,
      elevation: 1,
      centerTitle: true,
      title: const Text(
        'Online',
        style: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {},
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Icon(
            Icons.toggle_on,
            color: iconColor,
            size: 50,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color iconColor = widget.isOnline ? PSettings.color5 : PSettings.color2;
    return Scaffold(
      backgroundColor: PSettings.color1,
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: PSettings.color2,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          'Online',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.toggle_on,
              color: iconColor,
              size: 50,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          NotificationContainer(),
          AvatarBox('Esther Berry', '\$25.00', '2.2 km'),
          TagContainer('Apple Pay', 'Discount'),
          const SizedBox(
            height: 15,
          ),
          PickUpContainer('PICK UP', '7958 Swift Village'),
          const Divider(thickness: 0.8, height: 0),
          DropOffContainer('DROP OFF', '105 William St,Us'),
          const Divider(thickness: 0.8, height: 0),
          Button('Reject', 'Accept'),
          const SizedBox(
            height: 15,
          ),
          AvatarBox('Callie Greer', '\$20.00', '1.5 km'),
          TagContainer('Apple Pay', 'Discount'),
          const SizedBox(
            height: 15,
          ),
          PickUpContainer('PICK UP', '62 Kobe Traffic'),
          const Divider(thickness: 0.8, height: 0),
          DropOffContainer('DROP OFF', '280 Icie Park Suite'),
          const Divider(thickness: 0.8, height: 0),
          Button('Reject', 'Accept'),
        ],
      ),
    );
  }
}
