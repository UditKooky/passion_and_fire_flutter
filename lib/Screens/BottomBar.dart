import 'package:flutter/material.dart';
import 'package:passion_and_fire_flutter/Screens/Category.dart';
import 'package:passion_and_fire_flutter/Screens/HomePage.dart';
import 'package:passion_and_fire_flutter/Screens/NotificationScreen.dart';
import 'package:passion_and_fire_flutter/Screens/Profile.dart';
import 'package:passion_and_fire_flutter/utils/colors.dart';
import 'package:passion_and_fire_flutter/utils/images.dart';

class BottomBar extends StatefulWidget {
  var indexs;
   BottomBar({Key? key,this.indexs}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab  = 0;// to keep track of active tab index
  DateTime? _lastQuitTime;
  final List<Widget> screens = [
    HomePage(),
    Category(),
    NotificationScreen(),
    Profile(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage(); // Our first view in viewport
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentTab = widget.indexs==null?currentTab:widget.indexs;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screens[currentTab],
      bottomNavigationBar: BottomAppBar(
        color:bottomColor,
        shape: CircularNotchedRectangle(),
        // notchMargin: 10,
        child: Container(
          margin: EdgeInsets.only(left: 5,right: 5),
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        HomePage(); // if user taps on this dashboard tab will be active
                    currentTab  = 0;
                  });
                },
                child: Column(
                  children: <Widget>[
                    currentTab  == 0 ?Container(
                      height: 2,
                      width: 40,
                      color:whiteColor,
                    ):Container(  height: 2,   width: 40,),
                    SizedBox(height: 18,),
                    Image.asset(home,height: 20,width: 20,
                      color: currentTab  == 0 ? whiteColor:greyColor1,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Category(); // if user taps on this dashboard tab will be active
                    currentTab  = 1;
                  });
                },
                child: Column(
                  children: <Widget>[
                    currentTab  == 1 ?Container(
                      height: 2,
                      width: 40,
                      color:whiteColor,
                    ):Container(  height: 2,),
                    SizedBox(height: 18,   width: 40,),
                    Image.asset(category,height: 20,width: 20,
                      color: currentTab  == 1 ? whiteColor:greyColor1,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        NotificationScreen(); // if user taps on this dashboard tab will be active
                    currentTab  = 2;
                  });
                },
                child: Column(
                  children: <Widget>[
                    currentTab  == 2 ?Container(
                      height: 2,
                      width: 40,
                      color:whiteColor,
                    ):Container(  height: 2,   width: 40,),
                    SizedBox(height: 18,),
                    Image.asset(star,height: 20,width: 20,
                      color: currentTab  == 2 ? whiteColor:greyColor1,
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen =
                        Profile(); // if user taps on this dashboard tab will be active
                    currentTab  = 3;
                  });
                },
                child: Column(
                  children: <Widget>[
                    currentTab  == 3 ?Container(
                      height: 2,
                      width: 40,
                      color:whiteColor,
                    ):Container(  height: 2,   width: 40,),
                    SizedBox(height: 18,),
                    Image.asset(profile,height: 20,width: 20,
                      color: currentTab  == 3 ? whiteColor:greyColor1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
