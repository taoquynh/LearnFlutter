import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp( 
      home: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Load local image'),
      ),
      body: Container( 
        child: Center( 
          child: Text( 
            'Hello World',
            style: TextStyle( 
              color: Colors.white,
              fontSize: 18
            ),
          ),
        ),
        decoration: BoxDecoration( 
          image: DecorationImage( 
            image: AssetImage('assets/images/trai-tim.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}