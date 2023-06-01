import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/Components/CustomContainer.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Widget description(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(left: 15,right: 15),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
              " Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",style: TextStyle(color: whiteColor,fontSize: 14),),
        ),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(left: 15,right: 15),
          child: Text("About Author",style: TextStyle(color: whiteColor,fontSize: 20),),
        ),
        SizedBox(height: 10,),
        Container(
          margin: EdgeInsets.only(left: 15,right: 15),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
              "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.",
            style: TextStyle(color: whiteColor,fontSize: 14),),
        ),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(left: 30,right: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Duration",
                style: TextStyle(color: whiteColor,fontSize: 20),),
              Text("Level",
                style: TextStyle(color: whiteColor,fontSize: 20),),
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
          margin: EdgeInsets.only(left: 25,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("45:27",
                    style: TextStyle(color: viewColor,fontSize: 20),),
                  SizedBox(width: 5,),
                  Text("Mins",
                    style: TextStyle(color: whiteColor,fontSize: 18),),
                ],
              ),
              Container(
                height: height*0.035,
                width: width*0.3,
                decoration: BoxDecoration(color: tabtext3Color,borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("Intermediate",style: TextStyle(color: whiteColor,fontSize: 16),)),
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
        Container(
            margin: EdgeInsets.only(left: 20),
            child: Text("More by Authorname",style: TextStyle(color: whiteColor,fontSize: 20),)),
        Container(
          height: height*0.3,
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return CustomContainer(
                );
              }),
        ),
      ],
    );
  }
  Widget curriculum(){
    return Container();
  }
  Widget review(){
    return Container();
  }
  var height,width,size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              width: width,
              decoration:BoxDecoration(image: DecorationImage(image: AssetImage(detail),fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 60,left: 20),
                          child: Image.asset(arrowleft,scale: 2,)),
                      Container(
                        margin: EdgeInsets.only(right: 20,top: 55),
                        height: height*0.05,
                        width: width*0.25,
                        decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(star1,scale:0.8,),
                            Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text("4.3/5",style: TextStyle(color: whiteColor,fontSize: 18),))
                          ],
                        ),

                      )
                    ],
                  ),
                  Center(
                    child: Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Image.asset(music,scale: 2,)),
                  ),
                  SizedBox(height: 20,),
                  Container(
                      margin: EdgeInsets.only(left:20,top: 15),
                      width:size.width*0.6, child: Text("God lives within you",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Container(
                      margin: EdgeInsets.only(left:20,top: 15),
                      width:size.width*0.7, child: Text("\$499.00",style: TextStyle(color:viewColor,fontSize: 20,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  DefaultTabController(
                      length: 3,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Container(
                              color: primaryColor,
                              child:
                              TabBar(
                                labelColor: whiteColor,
                                labelStyle: TextStyle(color:whiteColor,fontSize: 16,fontWeight: FontWeight.bold),
                                unselectedLabelColor: titleColor,
                                indicatorColor: Colors.white,
                                indicatorPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                tabs: [
                                  Tab(text: 'Description',),
                                  Tab(text: 'Curriculum'),
                                  Tab(text: 'Review'),
                                ],
                              ),
                            ),
                            Container(
                                height: height*0.8, //height of TabBarView
                                decoration: BoxDecoration(
                                  // border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                                ),
                                child: TabBarView(children: <Widget>[
                                  Container(
                                    child: description(),
                                  ),
                                  Container(
                                    child: curriculum(),
                                  ),
                                  Container(
                                    child: review(),
                                  ),
                                ]))
                          ])),
                  SizedBox(height: 50,),

                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
            height: height*0.08,
            width: width,
            color: secondaryColor,
            child: Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text("Membership",style: TextStyle(color: whiteColor,fontSize: 20),),
                      SizedBox(width: 5,),
                      Image.asset(arrow,scale: 1.5,)
                    ],
                  ),
                  Container(
                    height: height*0.06,
                    width: width*0.5,
                    decoration: BoxDecoration(color:whiteColor,borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}