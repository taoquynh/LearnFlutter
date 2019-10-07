import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( 
    home: MyButton()
  ));
}

class MyButton extends StatefulWidget{
  @override 
  MyButtonState createState(){
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton>{
  int counter = 0;
  List<String> strings = ['Tào', 'Thuý', 'Quỳnh'];
  String displayedString = '';

  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(title: Text('Statefull Widget'),),
      body: Container( 
        child: Center( 
          
        ),
      ),
    );
  }
}