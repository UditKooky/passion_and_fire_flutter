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
      height:widget.height==null? 50:widget.height,
      width:widget.width==null? 100:widget.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color:whiteColor,
          borderRadius: BorderRadius.circular(widget.height==null? 30:(widget.height)/2)),
      child: Text("${widget.texttitle}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
    );
  }
}
