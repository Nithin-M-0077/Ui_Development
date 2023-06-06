import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_service_app/CustomColor/PSettings.dart';
import 'package:taxi_service_app/Psvgs.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({Key? key}) : super(key: key);

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 220,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(color: PSettings.color4),
            child: SvgPicture.asset(PSvgs.sv2),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 275,
              decoration: BoxDecoration(
                color: PSettings.color1,
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 150,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage(
                        'asset/images/02.png',
                      ),
                      alignment: Alignment.topLeft,
                      height: 80,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      color: PSettings.color2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Image(
                                image: AssetImage('asset/images/Bitmap.png')),
                          ),

                          const Icon(Icons.arrow_drop_down),
                          Container(
                            height: 30.0,
                            width: 1.0,
                            color: PSettings.color8.withOpacity(0.8),
                          ),

                          const SizedBox(width: 5),

                          Container(
                            child: Text(
                              '+84',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          Expanded(
                            child: TextField(
                              cursorColor: PSettings.color4,
                              cursorHeight: 25,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: 'Phone',
                                border: InputBorder.none,
                              ),
                            ),
                          ),

                          Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: PSettings.color9),
                              child: Icon(
                                Icons.clear_rounded,
                                size: 18,
                              ))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          foregroundColor: PSettings.color6,
                          backgroundColor: PSettings.color3,
                        ),
                        child: const Text("NEXT"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
