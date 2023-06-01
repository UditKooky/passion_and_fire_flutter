import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/Components/BooksContainer.dart';
import 'package:passion_and_fire_flutter/Components/CustomContainer.dart';
import 'package:passion_and_fire_flutter/Components/CustomContainer1.dart';
import 'package:passion_and_fire_flutter/Components/CustomTextFormField.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var size,height,width;
  TextEditingController searchController = TextEditingController();
  Widget courses(){
    return Column(
      children: [
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
        SizedBox(height: 5,),
        Container(
          height: height*0.05,
          color: tabtext1Color,
          child: Row(
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
        ),
        SizedBox(height: 5,),
        Container(
          height: height*0.2,
          color: tabtext1Color,
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(top: 25,left: 20,right: 10),
                  width: width*0.25,
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,backgroundColor: Colors.black,
                        child: Image.asset(heartcircle,scale: 3,),
                      ),
                      SizedBox(height: 10,),
                      Text("Marriage",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),),

                    ],
                  ),
                );
              }),
        ),
        SizedBox(height: 5,),
        Container(
          height: height*0.05,
          color: tabtext1Color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text("Favourites",
                  style: TextStyle(color: whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Text("More",
                  style: TextStyle(color:viewColor,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: height*0.25,
          child: ListView.builder(
              itemCount: 6,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return CustomContainer1(
                );
              }),
        ),
      ],
    );
  }
  Widget books(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        Container(
          width: width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: whiteColor),
                  child:Center(child: Text("Trending",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),))),
              SizedBox(width: 10,),
              Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: tabtext2Color),
                  child:Center(child: Text("Latest",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
              SizedBox(width: 10,),
              Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: tabtext2Color),
                  child:Center(child: Text("For you",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
              SizedBox(width: 10,),
              Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: tabtext2Color),
                  child:Center(child: Text("More",style: TextStyle(color: whiteColor,fontSize: 16,fontWeight: FontWeight.bold),))),
            ],
          ),
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
                  height: height*0.25,
                  child: ListView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return BooksContainer();
                      }),
                );
              }),
        ),
        SizedBox(height: 10,),
        Container(
            margin: EdgeInsets.only(left: 20),
            child: Text("Recent",style: TextStyle(color: whiteColor,fontSize:25,fontWeight: FontWeight.bold),)),
        SizedBox(height: 10,),
        BooksContainer(),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
     size = MediaQuery.of(context).size;
     height=size.height;
     width=size.width;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60,),
            CustomTextFormField(controller: searchController, hintText: 'Trust God Completely',isPassword: false,prefix: search,),
            SizedBox(height: 20,),
            DefaultTabController(
                length: 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        child:
                        TabBar(
                          labelColor: whiteColor,
                          labelStyle: TextStyle(color:whiteColor,fontSize: 16,fontWeight: FontWeight.bold),
                          unselectedLabelColor: tabtextColor,
                          indicatorColor: Colors.white,
                          indicatorPadding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          tabs: [
                            Tab(text: 'Courses',),
                            Tab(text: 'Books'),
                          ],
                        ),
                      ),
                      Container(
                          height: height*0.9, //height of TabBarView
                          decoration: BoxDecoration(
                            // border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                          ),
                          child: TabBarView(children: <Widget>[
                            Container(
                              child: courses(),
                            ),
                            Container(
                              child: books(),
                            ),
                          ]))
                    ])),

          ],
        ),
      ),
    );
  }
}


