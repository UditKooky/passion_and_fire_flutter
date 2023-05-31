import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 80,left: 20),
                child: Row(
                  children: [
                    Image.asset(arrowleft,scale: 2),
                    SizedBox(width: 15,),
                    Text("Notifications",style: TextStyle(color: whiteColor,fontSize:25,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Container(
                margin: EdgeInsets.only(right: 10),
                  alignment:Alignment.topRight,
                  child: Text("TODAY",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              Container(
                height: height*0.15,
                width: width,
                decoration: BoxDecoration(color:primaryColor,border: Border.all(color: Colors.black,width: 0.5)),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Container(
                      height: 60,
                      width: 40,
                      color: Colors.red,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Authorname just publish a new book",
                          style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                  width: width*0.6,
                  child: Text("Lorem ipsum dolor sit amet, consectetur "
                      "adipiscing elit, sed do eiusmod tempor Readmore...",
                    style: TextStyle(color: textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                ),


                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment:Alignment.topRight,
                  child: Text("YESTERDAY",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),)),
              SizedBox(height: 10,),
              Container(
                height: height*0.15,
                width: width,
                decoration: BoxDecoration(color:primaryColor,border: Border.all(color: Colors.black,width: 0.5)),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Container(
                      height: 60,
                      width: 40,
                      color: Colors.red,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Authorname just publish a new book",
                          style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          width: width*0.6,
                          child: Text("Lorem ipsum dolor sit amet, consectetur "
                              "adipiscing elit, sed do eiusmod tempor Readmore...",
                            style: TextStyle(color: textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: height*0.15,
                width: width,
                decoration: BoxDecoration(color:primaryColor,border: Border.all(color: Colors.black,width: 0.5)),
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                    Container(
                      height: 60,
                      width: 40,
                      color: Colors.red,
                    ),
                    SizedBox(width: 15,),
                    Column(
                      children: [
                        SizedBox(height: 20,),
                        Text("Authorname just publish a new book",
                          style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        Container(
                          width: width*0.6,
                          child: Text("Lorem ipsum dolor sit amet, consectetur "
                              "adipiscing elit, sed do eiusmod tempor Readmore...",
                            style: TextStyle(color: textColor,fontSize: 16,fontWeight: FontWeight.bold),),
                        ),


                      ],
                    ),
                  ],
                ),
              ),

            ],
          )
      ),
    );
  }
}
