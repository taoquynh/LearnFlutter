import 'package:flutter/material.dart';
import 'package:e_11_navigation_drawer/screens/account.dart';
import 'package:e_11_navigation_drawer/screens/setting.dart';

class HomeScreen extends StatefulWidget{
  @override 
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>{

  Drawer getNavDrawer(BuildContext context) {
    var headerChild = DrawerHeader(child: Text('Header'),);
    var aboutChild = AboutListTile( 
      child: Text('About'),
      applicationName: 'Application',
      applicationVersion: 'v1.0.0',
      applicationIcon: Icon(Icons.adb),
      icon: Icon(Icons.info),
    );

    ListTile getNavItem(var icon, String s, String routName){
      return ListTile( 
        leading: Icon(icon),
        title: Text(s),
        onTap: (){
          setState(() {
            // pop close the drawer
            Navigator.of(context).pop();
            // navigate to route
            Navigator.of(context).pushNamed(routName);
          });
        },
      );
    }

    var myNavChildren = [
      headerChild,
      getNavItem(Icons.settings, 'Setting', SettingScreen.routeName),
      getNavItem(Icons.home, 'Home', '/'),
      getNavItem(Icons.account_box, 'Account', AccountScreen.routeName),
      aboutChild
    ];

    ListView listView = ListView(children: myNavChildren,);
    return Drawer( 
      child: listView,
    );
  }

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        title: Text('Navigation Drawer'),
      ),
      body: Container( 
        child: Center( 
          child: Text('Home Screen'),
        ),
      ),
      drawer: getNavDrawer(context),
    );
  }
}