import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container( 
      child: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon( 
              Icons.adb,
              size: 160,
              color: Colors.green,
            ),
            Text('Secon Tab')
          ],
        ),
      ),
    );
  }
}