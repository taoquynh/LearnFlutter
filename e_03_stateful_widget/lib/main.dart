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
  int counter = 0; // tạo biến đếm
  List<String> strings = ['Trăm', 'Năm', 'Trong', 'Cõi', 'Người', 'Ta']; // mảng dữ liệu
  String displayedString = ''; 

  void onPressOfButton(){
    setState(() {
      displayedString = strings[counter];
      counter = counter < strings.length - 1 ? counter + 1 : 0;
    });
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(title: Text('Statefull Widget'),),
      body: Container( 
        child: Center( 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: <Widget>[
              Text(displayedString, style: TextStyle(fontSize: 40.0),),
              Padding(padding: EdgeInsets.all(10.0),),
              RaisedButton( 
                child: Text('Press me', style: TextStyle(color: Colors.white),),
                onPressed: onPressOfButton,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}