import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';

class CustomButton extends StatefulWidget {
  String texttitle;
  var height;
  var width;
   CustomButton({Key? key,required this.texttitle,this.height,this.width}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20),
      height:widget.height==null? 60:widget.height,
      width:widget.width==null? 80:widget.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color:whiteColor,
          borderRadius: BorderRadius.circular(widget.height==null? 30:(widget.height)/2)),
      child: Text("${widget.texttitle}",style: TextStyle(color: backgroundColor,fontSize: 16,fontWeight: FontWeight.bold),),
    );
  }
}
