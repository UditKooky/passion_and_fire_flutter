import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Components/CustomButton.dart';
import 'package:passion_and_fire_flutter/Components/CustomTextFormField.dart';
import 'package:passion_and_fire_flutter/Screens/PlanScreen.dart';
import 'package:passion_and_fire_flutter/Screens/auth/SignupScreen.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  var height,width,size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: height,
            width: width,
            decoration:BoxDecoration(image: DecorationImage(image: AssetImage(photoblurr),fit: BoxFit.fill)),
            child: Column(
              children: [
                SizedBox(height: 30),
                Image.asset(mainLogo,scale: 2.5,),
                Spacer(),
                Text("SIGN IN",style: TextStyle(color:whiteColor,
                    fontSize: 25,fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: height*0.002,
                  width: width*0.35,
                  color: whiteColor,
                ),
                Spacer(),
                Container(
                    margin: EdgeInsets.only(left: 35),
                    alignment: Alignment.topLeft,
                    child: Text("Email address",style: TextStyle(color:whiteColor,fontSize:16,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                CustomTextFormField(controller: emailController, hintText: "Enter Your Email Address",isPassword: false,
                    prefix:email,validator: (p0) => "Enter your Email"),
                SizedBox(height: 20,),
                Container(
                    margin: EdgeInsets.only(left: 35),
                    alignment: Alignment.topLeft,
                    child: Text("Password",style: TextStyle(color:whiteColor,fontSize:16,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                CustomTextFormField(controller: passwordController, hintText: "Enter Your Password",isPassword: true,
                    prefix:key,validator: (p0) => "Enter your Password"),
                SizedBox(height: 80,),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>PlanScreen());
                    },
                    child: CustomButton(texttitle: "Sign in",height: height*0.055,width: width*0.85,)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("D'nt have an account? ",style: TextStyle(color: whiteColor,fontSize: 16),),
                    GestureDetector(
                        onTap: (){
                          Get.to(()=>SignupScreen());
                        },
                        child: Text("Sign up",style: TextStyle(color:blueColor,fontSize: 16),)),
                  ],
                ),
                SizedBox(height: 80,),
              ],
            )
        ),
      ),
    );
  }
}
