import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Components/CustomButton.dart';
import 'package:passion_and_fire_flutter/Components/CustomTextFormField.dart';
import 'package:passion_and_fire_flutter/Screens/PlanScreen.dart';
import 'package:passion_and_fire_flutter/Screens/auth/SigninScreen.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
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
              Text("SIGN UP",style: TextStyle(color:whiteColor,
                  fontSize: 18,fontWeight: FontWeight.bold),),
              Container(
                margin: EdgeInsets.only(top: 5),
                height: height*0.001,
                width: width*0.35,
                color: whiteColor,
              ),
              SizedBox(height: 50 ,),
              CustomTextFormField(controller: emailController, hintText: "Enter Your Email Address",isPassword: false,
              prefix:email,validator: (p0) => "Enter your Email", title: 'Email address',),
              SizedBox(height: 10,),
              CustomTextFormField(controller: passwordController, hintText: "Enter Your Password",isPassword: true,
                  prefix:key,validator: (p0) => "Enter your Password",suffix:eye, title: 'Password',),
              SizedBox(height: 10,),
              CustomTextFormField(controller: confirmpasswordController, hintText: "Confirm Your Password",isPassword: true,
                  prefix:key,validator: (p0) => "Confirm Your Password",suffix:eye, title: 'Confirm Password',),
              SizedBox(height: 60,),
              GestureDetector(git
                  onTap: (){
                    Get.to(()=>PlanScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 1,));
                  },
                  child: CustomButton(texttitle: "Sign up",height: height*0.055,width: width*0.85,)),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("have an account?",style: TextStyle(color: whiteColor,fontSize: 14),),
                  GestureDetector(
                      onTap: (){
                        Get.off(()=>SigninScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 1,));
                      },
                      child: Text("Sign in",style: TextStyle(color:blueColor,fontSize: 14),)),
                ],
              ),
              SizedBox(height: 40,),
            ],
          )
        ),
      ),
    );
  }
}
