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
                    fontSize: 18,fontWeight: FontWeight.bold),),

                Container(
                  margin: EdgeInsets.only(top: 5),
                  height: height*0.001,
                  width: width*0.35,
                  color: whiteColor,
                ),
                SizedBox(height: 50,),
                // Spacer(),

                // SizedBox(height: 10,),
                CustomTextFormField(title:"Email address",
                    controller: emailController, hintText: "Enter Your Email Address",isPassword: false,
                    prefix:email,validator: (p0) => "Enter your Email"),
                SizedBox(height: 10,),

                CustomTextFormField(controller: passwordController, hintText: "Enter Your Password",isPassword: true,
                    prefix:key,validator: (p0) => "Enter your Password", title: 'Password',),
                SizedBox(height: 80,),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>PlanScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 1,));
                    },
                    child: CustomButton(texttitle: "Sign in",height: height*0.055,width: width*0.85,)),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",style: TextStyle(color: whiteColor,fontSize: 14),),
                    GestureDetector(
                        onTap: (){
                          Get.off(()=>SignupScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 1,));
                        },
                        child: Text("Sign up",style: TextStyle(color:blueColor,fontSize: 14),)),
                  ],
                ),
                SizedBox(height: 50,),
              ],
            )
        ),
      ),
    );
  }
}
