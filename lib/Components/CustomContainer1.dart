import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class CustomContainer1 extends StatefulWidget {
  const CustomContainer1({Key? key}) : super(key: key);

  @override
  State<CustomContainer1> createState() => _CustomContainer1State();
}

class _CustomContainer1State extends State<CustomContainer1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Center(
      child: Container(
        height: size.height*0.22,
        width: size.width*0.65,
        margin: EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(author),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20),),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),gradient: LinearGradient( begin: Alignment.topCenter,
            transform: GradientRotation(double.maxFinite),
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.3),
              Colors.white.withOpacity(0.2)
            ],)),
          child: Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right:35,top: 15),
                            width:size.width*0.18, child: Text("GOD LIVES IN YOU!",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                        Container(
                            margin: EdgeInsets.only(left: 15,top: 15),
                            width:size.width*0.3, child: Text("JOYCE HEYER",style: TextStyle(color: Colors.white,fontSize: 12,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 10,top: 10),
                            child: Image.asset(comment,scale: 2,)),
                        Container(
                            margin: EdgeInsets.only(right: 10,top: 10),
                            child: Image.asset(heart1,scale: 2,)),

                      ],
                    )
                  ],

                ),
                Container(
                  margin: EdgeInsets.only(right: 10,top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("34:52",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Image.asset(music,scale: 4,),
                    ],
                  ),
                ),
              ] ),

        ),
      ),
    );
  }
}
