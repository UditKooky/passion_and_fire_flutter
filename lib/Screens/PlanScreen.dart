import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Components/CustomButton.dart';
import 'package:passion_and_fire_flutter/Components/custom_expention_tile.dart';
import 'package:passion_and_fire_flutter/Screens/BottomBar.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({Key? key}) : super(key: key);

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  bool ismore = false;
  bool ismore1 = false;
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
                SizedBox(height: 40),
                Image.asset(mainLogo,scale: 2.5,),
                SizedBox(height:65,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 15),
                      child: Text("SELECT SUBCRIPTION",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.only(left: 15,top: 3),
                    height: height*0.001,
                    width: width*0.35,
                    color: whiteColor,
                  ),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomExpansionTile(title: Row(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: height*0.045,
                        width: 100,
                        decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text("PLAN A",style: TextStyle(color:backgroundColor,fontSize: 14,fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 40,top: 20),
                          child: Row(
                            children: [
                              Text("View details",style: TextStyle(color:whiteColor,fontSize: 12,),),
                              Center(child: Icon(Icons.keyboard_arrow_down,color: whiteColor,))
                            ],
                          ))

                    ],
                  ),  leading: Container(height: 15,width: 15,), trailing:  Container(height: 15,width: 15,), rlt: false,
                  expanded: false,
                  children: [
                    SizedBox(height: 15,),
                    Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        width: width*0.80,
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                            "Duis sit amet metus a lorem sagittis eleifend. "
                            "Sed eu ligula interdum risus elementum semper ut sed ligula. "
                            "Etiam pharetra semper nunc vel consequat. Suspendisse orci purus,"
                          ,style: TextStyle(color:whiteColor,fontSize: 12,),)),
                    SizedBox(height: 30,),
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomExpansionTile(title: Row(
                    children: [

                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: height*0.045,
                        width: 100,
                        decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text("PLAN B",style: TextStyle(color:backgroundColor,fontSize: 14,fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 40,top: 20),
                          child: Row(
                            children: [
                              Text("View details",style: TextStyle(color:whiteColor,fontSize: 12,),),
                              Center(child: Icon(Icons.keyboard_arrow_down,color: whiteColor,))
                            ],
                          ))

                    ],
                  ),  leading: Container(height: 15,width: 15,), trailing:  Container(height: 15,width: 15,), rlt: false,
                  expanded: false,
                  children: [
                    SizedBox(height: 15,),
                    Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        width: width*0.80,
                        child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                            "Duis sit amet metus a lorem sagittis eleifend. "
                            "Sed eu ligula interdum risus elementum semper ut sed ligula. "
                            "Etiam pharetra semper nunc vel consequat. Suspendisse orci purus,"
                          ,style: TextStyle(color:whiteColor,fontSize: 12,),)),
                    SizedBox(height: 30,),
                  ],),
                ),

                Spacer(),
                GestureDetector(
                    onTap: (){
                      Get.to(()=>BottomBar());
                    },
                    child: CustomButton(texttitle: "Subscribe",height: height*0.06,width: width*0.85,)),
                SizedBox(height: 50,),
              ],
            )
        ),
      ),
    );
  }
}
