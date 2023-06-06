import 'package:flutter/material.dart';
import 'package:taxi_service_app/ShoppingCartProject/Screens/DashboardUi.dart';
import 'package:taxi_service_app/ShoppingCartProject/Screens/LetsGetStartedLoginUi.dart';
import 'package:taxi_service_app/ShoppingCartProject/Screens/mainLoginUi.dart';
import 'package:taxi_service_app/ShoppingCartProject/Screens/myAccountUi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MainLoginUi(),
    );
  }
}
