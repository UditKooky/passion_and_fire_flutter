import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final String hintText;
  final String? prefix;
  final String? suffix;
  final bool isPassword;
  final String? Function(String?)? validator;

   CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
     this.suffix,
    this.prefix,
    this.isPassword = false,
    this.validator, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.09,
      padding: EdgeInsets.only(left: 25,right: 25),
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              alignment: Alignment.topLeft,
              child: Text("${title}",style: TextStyle(color:whiteColor,fontSize:14,fontWeight: FontWeight.bold),)),
          TextFormField(
            controller: controller,
            obscureText: isPassword,
            validator: validator,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: hintText,
              hintStyle: TextStyle(color:greyyColor,fontSize: 14),
              prefixIcon: prefix != null ? Image.asset(prefix!,scale: 6,color: greyColor,) : null,
              suffixIcon: suffix != null ? Image.asset(suffix!,scale: 4,color: greyColor,) : null,
              filled: true,
              fillColor:textFieldColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
