import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Screens/OnboardingScreen.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height,width,size;
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),() {

    },);
    getroute();

  }

  getroute(){
    Timer(Duration(seconds: 5),
            ()=> Get.offAll(()=>OnboardingScreen(),transition: Transition.fadeIn,duration: Duration(milliseconds: 500)));
  }
  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Container(
        height: height,
        width: width,
        child: Image.asset(mainLogo,scale:3),
      ),
    );
  }
}
