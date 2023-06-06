import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Home/Widgets/AvatarContainer.dart';
import 'package:taxi_service_app/Home/Widgets/CallMessageCancel.dart';
import 'package:taxi_service_app/Home/Widgets/GoToPickUp.dart';
import 'package:taxi_service_app/Home/Widgets/NotedContainer.dart';
import 'package:taxi_service_app/Home/Widgets/PickupandDropoff.dart';
import 'package:taxi_service_app/Home/Widgets/TripFareContainer.dart';

class HomeOnlineBookingDetails extends StatefulWidget {
  const HomeOnlineBookingDetails({Key? key}) : super(key: key);

  @override
  State<HomeOnlineBookingDetails> createState() =>
      _HomeOnlineBookingDetailsState();
}

class _HomeOnlineBookingDetailsState extends State<HomeOnlineBookingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PSettings.color1,
      appBar: AppBar(
        toolbarHeight: 75,
        backgroundColor: PSettings.color2,
        elevation: 1,
        centerTitle: true,
        title: const Text(
          '#123456',
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w700,
            color: Colors.black,
            letterSpacing: 0.1,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.yellow,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      body: ListView(
        children: [
          AvatarContainer(
              'Esther Berry', '\$25.00', '2.2 km', 'Apple Pay', 'Discount'),
          const SizedBox(
            height: 15,
          ),
          PickUpContainer('PICK UP', '7958 Swift Village'),
          const Divider(thickness: 0.8, height: 0),
          DropOffContainer('DROP OFF', '105 William St,Us'),
          const Divider(thickness: 0.8, height: 0),
          NotedContainer('NOTED',
              'Lorem ipsum dolor sit amet, consectetur adipisc elit. Nullam ac vestibulum erat. Cras vulputate auctor lectus at consequat.'),
          const Divider(thickness: 0.8, height: 0),
          TripFairContainer(
            'TRIP FARE',
            ['Apple Pay', 'Discount', 'Paid amount'],
            ['\$15.00', '\$10.00', '\$25.00'],
          ),
          const Divider(thickness: 0.8, height: 0),
          SizedBox(
            height: 40,
          ),
          BoxContainers(),
          SizedBox(
            height: 20,
          ),
          YellowContainer('GO TO PICK UP')
        ],
      ),
    );
  }
}
