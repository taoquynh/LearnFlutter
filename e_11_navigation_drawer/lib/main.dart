import 'package:flutter/material.dart';
import 'package:e_11_navigation_drawer/screens/account.dart';
import 'package:e_11_navigation_drawer/screens/home.dart';
import 'package:e_11_navigation_drawer/screens/setting.dart';

void main(){
  runApp(
    MaterialApp( 
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: <String, WidgetBuilder>{
        // define routes
        SettingScreen.routeName: (BuildContext context) => SettingScreen(),
        AccountScreen.routeName: (BuildContext context) => AccountScreen(),
      }
    )
  );
}