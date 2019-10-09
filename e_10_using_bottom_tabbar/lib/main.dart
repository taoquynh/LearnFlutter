import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import './tabs/first.dart';
import './tabs/second.dart';
import './tabs/third.dart';

void main(){
  runApp(
    MaterialApp( 
      title: 'Bottom Bar',
      home: MyBottomBar(),
    )
  );
}

class MyBottomBar extends StatefulWidget  { 
  @override 
  _MyBottomBar createState() => _MyBottomBar();
}

class _MyBottomBar extends State<MyBottomBar> with SingleTickerProviderStateMixin{

  // create a tab controller
  TabController controller;

  @override
  void initState(){
    super.initState();

    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Using Bottom Bar'),),
      body: TabBarView( 
        children: <Widget>[First(), Second(), Third()],
        controller: controller,
      ),
      bottomNavigationBar: Material( 
        color: Colors.blue,
        child: TabBar(
          tabs: <Widget>[
            Tab( 
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            ),
            Tab( 
              icon: Icon(Icons.adb),
              text: 'Adb',
            ),
            Tab(
              icon: Icon(Icons.airport_shuttle),
              text: 'Shuttle',
              )
          ],
          controller: controller,
        ),
      ),
    );
  }
}