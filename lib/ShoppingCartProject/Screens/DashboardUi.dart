import 'package:flutter/material.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DashBoardDeliveyHomeText.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DashboardCarousel.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DashboardRowWidget2.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DashboardRowWidget3.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DashboardSearchForProducts.dart';
import 'package:taxi_service_app/ShoppingCartProject/Widgets/DashboardVegandMuchiesRow.dart';

class DashboardUi extends StatefulWidget {
  const DashboardUi({Key? key}) : super(key: key);

  @override
  State<DashboardUi> createState() => _DashboardUiState();
}

class _DashboardUiState extends State<DashboardUi> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PSettings.color2,
      appBar: PreferredSize(
        preferredSize: Size(size.width, 80),
        child: AppBar(
          elevation: 0.2,
          backgroundColor: PSettings.color1,
          title: textWidget(),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 10,top: 10),
              padding: EdgeInsets.all(8),
              width: 50,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xffFFD86A),
                shape: BoxShape.circle,
              ),
              child: Image.asset('asset/images/user.png'),
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          SearchForProduct(text: 'Search for product'),
          SizedBox(height: 10),

          createCarouselSlider('asset/images/Carousel.png'),
          SizedBox(height: 30,),

          createRowWidget('Vegetables & Fruits', 'asset/images/fruits.png', 'Muchies', 'asset/images/lays.png'),
          SizedBox(height: 18,),

          createRowWidget2(),
          SizedBox(height: 10,),

          createRowWidget3(),
          SizedBox(height: 8),

          createCarouselSlider('asset/images/carousell.png')
        ],
      ),
    );
  }
}
