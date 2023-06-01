import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class CustomContainer extends StatefulWidget {
  const CustomContainer({Key? key}) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height*0.25,
        width: size.width*0.35,
        margin: EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(author),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),),
        child: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),gradient: LinearGradient( begin: Alignment.topCenter,
            transform: GradientRotation(double.maxFinite),
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.3),
              Colors.white.withOpacity(0.2)
            ],)),
          child: Container(
              margin: EdgeInsets.all(15),
              child: Text("LIFE",style: TextStyle(color: Colors.white,fontSize: 18),)),

        ),
      ),
    );
  }
}
