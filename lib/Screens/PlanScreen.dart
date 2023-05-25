import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/Components/CustomButton.dart';
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
                Container(
                    margin: EdgeInsets.only(right: 140,top: 50),
                    child: Text("SELECT SUBCRIPTION",style: TextStyle(color: whiteColor,fontSize: 25,fontWeight: FontWeight.bold),)),
                Container(
                  margin: EdgeInsets.only(right: 210,top: 5),
                  height: height*0.002,
                  width: width*0.35,
                  color: whiteColor,
                ),
                SizedBox(height: 20,),
                ismore==false?GestureDetector(
                  onTap: (){
                    setState(() {
                      ismore1=false;
                      ismore=true;

                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        height: height*0.045,
                        width: width*0.25,
                        decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text("PLAN A",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 40,top: 20),
                          child: Row(
                            children: [
                              Text("View details",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),),
                              Center(child: Icon(Icons.keyboard_arrow_down,color: whiteColor,))
                            ],
                          ))
                    ],
                  ),
                ):SizedBox(),
                SizedBox(height: 20,),
                ismore==true?Container(
                  height: height*0.25,
                  width: width*0.9,
                  decoration: BoxDecoration(color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 20),
                            height: height*0.045,
                            width: width*0.25,
                            decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Text("PLAN A",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("View details",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),),
                                  Icon(Icons.keyboard_arrow_down,color: whiteColor,)
                                ],
                              )),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        margin: EdgeInsets.only(left: 15,right: 15),
                        width: width*0.80,
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet metus a lorem sagittis eleifend. Sed eu ligula interdum risus elementum semper ut sed ligula. Etiam pharetra semper nunc vel consequat. Suspendisse orci purus,",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ):SizedBox(),
                // Row(
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 20,top: 20),
                //       height: height*0.045,
                //       width: width*0.25,
                //       decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                //       child: Center(
                //           child: Text("PLAN A",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                //     ),
                //     Container(
                //       margin: EdgeInsets.only(left: 40,top: 20),
                //         child: Row(
                //           children: [
                //             Text("View details",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),),
                //             Center(child: Icon(Icons.keyboard_arrow_down,color: whiteColor,))
                //           ],
                //         ))
                //   ],
                // ),
                SizedBox(height: 50,),
                ismore1==false?GestureDetector(
                  onTap: (){
                    setState(() {
                      ismore1=true;
                      ismore=false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,top: 20),
                        height: height*0.045,
                        width: width*0.25,
                        decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                        child: Center(
                            child: Text("PLAN B",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 40,top: 20),
                          child: Row(
                            children: [
                              Text("View details",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),),
                              Center(child: Icon(Icons.keyboard_arrow_down,color: whiteColor,))
                            ],
                          ))
                    ],
                  ),
                ):SizedBox(),
                SizedBox(height: 20,),
                ismore1==true?Container(
                  height: height*0.25,
                  width: width*0.9,
                  decoration: BoxDecoration(color: Colors.black,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20,top: 20),
                            height: height*0.045,
                            width: width*0.25,
                            decoration: BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(8)),
                            child: Center(
                                child: Text("PLAN B",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 20,top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("View details",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),),
                                  Icon(Icons.keyboard_arrow_down,color: whiteColor,)
                                ],
                              )),

                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          width: width*0.80,
                          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis sit amet metus a lorem sagittis eleifend. Sed eu ligula interdum risus elementum semper ut sed ligula. Etiam pharetra semper nunc vel consequat. Suspendisse orci purus,",style: TextStyle(color:whiteColor,fontSize: 18,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ):SizedBox(),
                Spacer(),
                CustomButton(texttitle: "Subscribe",height: height*0.065,width: width*0.9,),
                SizedBox(height: 50,),
              ],
            )
        ),
      ),
    );
  }
}
