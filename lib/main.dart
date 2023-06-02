import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Screens/splash_screen.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Passion and Fire',
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'Montserrat'
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

