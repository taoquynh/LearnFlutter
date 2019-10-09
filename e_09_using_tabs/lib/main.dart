import 'package:e_09_using_tabs/tabs/first.dart';
import 'package:e_09_using_tabs/tabs/second.dart';
import 'package:e_09_using_tabs/tabs/third.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp( 
      // title:
      title: 'Using Tabs',
      // home
      home: MyHome(),
    )
  );
}

class MyHome extends StatefulWidget{
  @override 
  MyHomeState createState() => MyHomeState();
}

class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {

  // Setup Tabs
  TabController controller; // create a tab controller

  @override 
  void initState(){
    super.initState();
    // khởi tạo tab controller
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  TabBar getTabBar(){
    return TabBar( 
      tabs: <Widget>[
        Tab( 
          icon: Icon(Icons.favorite), // set icon cho tab
        ),
        Tab(
          icon: Icon(Icons.adb),
        ),
        Tab(
          icon: Icon(Icons.airport_shuttle),
        ),
      ],
      // set up controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs){
    return TabBarView( 
      children: tabs,
      controller: controller,
    );
  }

  // 
  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(
        title: Text('Using Tabs'),
        bottom: getTabBar(),
        ),
      body: getTabBarView([First(), Second(), Third()]),
    );
  }
}