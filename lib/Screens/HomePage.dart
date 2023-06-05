import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:passion_and_fire_flutter/Components/BooksContainer.dart';
import 'package:passion_and_fire_flutter/Components/CustomContainer.dart';
import 'package:passion_and_fire_flutter/Components/CustomContainer1.dart';
import 'package:passion_and_fire_flutter/Screens/DetailScreen.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var height,width,size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: primaryColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: height,
                width: width,
                decoration: BoxDecoration(color:whiteColor,image: DecorationImage(image: AssetImage(photo),fit: BoxFit.cover)),),
            Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: 60,),
                    Image.asset(mainLogo,scale: 3,),
                    Container(
                        margin: EdgeInsets.only(left: 40,top: 10),
                        child:Image.asset(search,scale: 2,))
                  ],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        height: height*0.04,
                        width: width*0.2,
                      decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                        child:Center(child: Text("Trending",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),))),
                    SizedBox(width: 8,),
                    Container(
                      height: height*0.04,
                      width: width*0.2,
                      decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                        child:Center(child: Text("Latest",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),))),
                    SizedBox(width: 8,),
                    Container(
                        height: height*0.04,
                        width: width*0.2,
                      decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                        child:Center(child: Text("For you",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),))),
                    SizedBox(width: 8,),
                    Container(
                        height: height*0.04,
                        width: width*0.2,
                      decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                        child:Center(child: Text("More",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),))),
                  ],
                ),
                SizedBox(height: height*0.35,),
                Container(
                    height: height*0.04,
                    width: width*0.22,
                    decoration: BoxDecoration(color:whiteColor,border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(20)),
                    child:Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: size.height*0.01,
                          width: size.width*0.02,
                          decoration: BoxDecoration(color: primaryColor,borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(width: 5,),
                        Center(child: Text("LATEST",style: TextStyle(color: primaryColor,fontSize: 12,fontWeight: FontWeight.bold),)),
                      ],
                    )),
                SizedBox(height: 15),
                Center(child: Text("GOD LIVES IN YOU",
                  style: TextStyle(color: whiteColor,fontSize: 18,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10),
                Center(child: Text("Spirituality",
                  style: TextStyle(color: whiteColor,fontSize: 14,fontWeight: FontWeight.bold),)),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(menu,scale: 3,),
                    Image.asset(music,scale: 3,),
                    Image.asset(heart,scale: 3,),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("For You",
                        style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Container(
                  height: height*0.3,
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return CustomContainer1(
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Categories",
                        style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: height*0.3,
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Get.to(()=>DetailScreen(),transition: Transition.fadeIn,duration: Duration(seconds: 1,));
                      },
                      child: CustomContainer(
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("books",
                        style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: height*0.25,
                  margin: EdgeInsets.only(right: 5),
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return BooksContainer();
                      }),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Topics",
                        style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 14,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.only(right: 10),
                  height: height*0.18,
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.only(left: 10,),
                          child: Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(color:whiteColor,borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(image: AssetImage(author),fit: BoxFit.cover),),
                              ),
                              SizedBox(height: 10,),
                              Text("Marriage",style: TextStyle(color: whiteColor,fontSize: 14,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
