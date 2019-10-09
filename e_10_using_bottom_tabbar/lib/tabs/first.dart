import 'package:flutter/material.dart';

class First extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Container( 
      child: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.favorite,
              size: 100,
              color: Colors.red,
            ),
            Text('First Tab')
          ],
        ),
      ),
    );
  }
}