import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class BooksContainer extends StatefulWidget {
  const BooksContainer({Key? key}) : super(key: key);

  @override
  State<BooksContainer> createState() => _BooksContainerState();
}

class _BooksContainerState extends State<BooksContainer> {
  var size,height,width;
  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size;
     height = size.height;
     width = size.width;
    return Container(
      margin: EdgeInsets.only(left: 15,),
      width: width*0.32,
      decoration: BoxDecoration(color:backgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(7),
            height: height*0.15,
            width: width*0.2,
            // color: Colors.amberAccent,
            child: Image.asset(book),
          ),
          Text("Loved.",style: TextStyle(color: whiteColor,fontSize: 14,fontWeight: FontWeight.bold),),
          Text("Chara Presley",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),),
          SizedBox(height: 5,),
        ],
      ),
    );
  }
}
