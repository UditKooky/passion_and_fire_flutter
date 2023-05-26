import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var height,width,size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration:BoxDecoration(image: DecorationImage(image: AssetImage(background),fit: BoxFit.fill)),
        child:Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 60,right: 220),
                child: Text("Profile",style: TextStyle(color: whiteColor,fontSize:40,fontWeight: FontWeight.bold),)),
            SizedBox(height: 10,),
            Container(
              width: width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CircleAvatar(
                      radius: 60,backgroundColor: whiteColor,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("Ankit Bansal",style: TextStyle(color: whiteColor,fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Image.asset(edit,scale: 2,)
                        ],
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("+91 9235522333",style: TextStyle(color: Colors.blue,fontSize: 14,fontWeight: FontWeight.bold),)),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("Active Subscription",style: TextStyle(color: whiteColor,fontSize: 14,fontWeight: FontWeight.bold),),
                          SizedBox(width: 10,),
                          Container(
                            height: height*0.025,
                            width: width*0.2,
                            decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Text("PLAN A",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),)),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              height: height*0.08,
              width: width,
              decoration: BoxDecoration(color: primaryColor,border: Border.all(color: Colors.black,width: 0.5)),
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Image.asset(checkout,scale: 1.5,),
                      SizedBox(width: 15,),
                      Text("My Orders",style: TextStyle(color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Image.asset(arrowright,scale: 2))
                ],
              ),
            ),
            Container(
              height: height*0.08,
              width: width,
              decoration: BoxDecoration(color: primaryColor,border: Border.all(color: Colors.black,width:0.5)),
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Image.asset(checkout,scale: 1.5,),
                      SizedBox(width: 15,),
                      Text("My Subscription",style: TextStyle(color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Image.asset(arrowright,scale: 2))
                ],
              ),
            ),
            Container(
              height: height*0.08,
              width: width,
              decoration: BoxDecoration(color: primaryColor,border: Border.all(color: Colors.black,width:0.5)),
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Image.asset(checkout,scale: 1.5,),
                      SizedBox(width: 15,),
                      Text("Settings",style: TextStyle(color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Image.asset(arrowright,scale: 2))
                ],
              ),
            ),
            Container(
              height: height*0.08,
              width: width,
              decoration: BoxDecoration(color: primaryColor,border: Border.all(color: Colors.black,width:0.5)),
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Image.asset(logout,scale: 1.5,),
                      SizedBox(width: 15,),
                      Text("Logout",style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Spacer(),
                  Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Image.asset(arrowright,scale: 2))
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
