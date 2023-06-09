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
              backgroundColor.withOpacity(0.8),
              backgroundColor.withOpacity(0.6),
              backgroundColor.withOpacity(0.2),
              whiteColor.withOpacity(0.1)
            ],)),
          child: Column(
              children:[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 15),
                            width:size.width*0.3, child: Text("GOD LIVES IN YOU!",style: TextStyle(color:whiteColor,fontSize: 16,fontWeight: FontWeight.bold),)),
                        SizedBox(height: 25,),
                        Container(
                            margin: EdgeInsets.only(left: 15,bottom: 15),
                            width:size.width*0.3, child: Text("JOYCE HEYER",style: TextStyle(color:whiteColor,fontSize: 12,fontWeight: FontWeight.bold),)),
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
                  margin: EdgeInsets.only(right: 10,top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("34:52",style: TextStyle(color:whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(width: 5,),
                      Image.asset(music,scale: 5,),
                    ],
                  ),
                ),
              ] ),

        ),
      ),
    );
  }
}
