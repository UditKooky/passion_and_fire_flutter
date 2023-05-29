import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var height,width,size;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            height: height*1.3,
            width: width,
            decoration:BoxDecoration(image: DecorationImage(image: AssetImage(photo),fit: BoxFit.fill)),
            child: Column(
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
                Container(
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                          child:Center(child: Text("Trending",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
                      SizedBox(width: 15,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                          child:Center(child: Text("Latest",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
                      SizedBox(width: 15,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                          child:Center(child: Text("For you",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
                      SizedBox(width: 15,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(15)),
                          child:Center(child: Text("More",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                    height: 30,
                    width: 80,
                    decoration: BoxDecoration(color:whiteColor,border: Border.all(color: whiteColor),borderRadius: BorderRadius.circular(20)),
                    child:Row(
                      children: [
                        SizedBox(width: 10,),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(color: primaryColor,borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(width: 5,),
                        Center(child: Text("LATEST",style: TextStyle(color: primaryColor,fontSize: 16,fontWeight: FontWeight.bold),)),
                      ],
                    )),
                SizedBox(height: 10),
                Center(child: Text("GOD LIVES IN YOU",
                  style: TextStyle(color: whiteColor,fontSize: 30,fontWeight: FontWeight.bold),)),
                SizedBox(height: 5),
                Center(child: Text("Spirituality",
                  style: TextStyle(color: whiteColor,fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(menu,scale: 2,),
                    Image.asset(music,scale: 2,),
                    Image.asset(heart,scale: 2,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("For You",
                        style: TextStyle(color: whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Categories",
                        style: TextStyle(color: whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: height*0.2,
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.only(left: 15,right: 10),
                      width: width*0.3,
                      decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                        ],
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
                        style: TextStyle(color: whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: height*0.22,
                  child: ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          width: width*0.35,
                          decoration: BoxDecoration(color:Colors.black),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                height: height*0.14,
                                width: width*0.2,
                                color: Colors.white,
                              ),
                              Text("Loved.",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text("Chara Presley",style: TextStyle(color: whiteColor,fontSize: 12,fontWeight: FontWeight.bold),),
                              SizedBox(height: 10,),
                            ],
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
                      child: Text("Topics",
                        style: TextStyle(color: whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text("More",
                        style: TextStyle(color:viewColor,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: height*0.2,
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return Container(
                          width: width*0.25,
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 45,backgroundColor: whiteColor,
                              ),
                              SizedBox(height: 10,),
                              Text("Marriage",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),

                            ],
                          ),
                        );
                      }),
                ),
              ],
            )
        ),
      ),
    );
  }
}
