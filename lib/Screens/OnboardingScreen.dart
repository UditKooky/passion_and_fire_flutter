import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Screens/auth/SigninScreen.dart';
import 'package:passion_and_fire_flutter/Screens/auth/SignupScreen.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
        decoration:BoxDecoration(image: DecorationImage(image: AssetImage(photo),fit: BoxFit.fill)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Image.asset(mainLogo,scale: 2.5,),
            Spacer(),
            Image.asset(mainLogo,scale:4.5,),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: height*0.06,
              width: width*0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),border: Border.all(color:whiteColor,width: 2) ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(email,scale: 5,),
                  GestureDetector(
                      onTap: (){
                        Get.to(()=>SignupScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 1,));
                      },
                      child: Center(child: Text("Sign up with email",style: TextStyle(color: whiteColor,fontSize: 14,fontWeight: FontWeight.bold),))),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("have an account? ",style: TextStyle(color: whiteColor,fontSize: 14),),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>SigninScreen(),transition: Transition.fadeIn,duration:Duration(seconds: 1,));
                    },
                    child: Text("Sign in",style: TextStyle(color:blueColor,fontSize: 14),)),
              ],
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
