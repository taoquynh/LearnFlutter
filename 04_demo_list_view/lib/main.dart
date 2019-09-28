import 'package:demo_list_view/extension/customAppar.dart';
import 'package:flutter/material.dart';
import './extension/convertColor.dart';
import './screens/mainScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      title: 'Demo ListView',
      home: Scaffold(
        appBar: CustomAppBar(title: 'Các loại ListView', isHome: true,),
        body: ListViewDemo(),
        backgroundColor: HexColor('#ffffff'),
      ),
    );
  }
}