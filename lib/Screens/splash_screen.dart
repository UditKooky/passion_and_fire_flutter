import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var height,width,size;
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
        child: Image.asset("assets/images/appLogo.png"),
      ),
    );
  }
}
