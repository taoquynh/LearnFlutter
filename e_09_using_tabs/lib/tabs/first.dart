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
              Icons.bug_report,
              size: 160,
              color: Colors.red,
            ),
            Text('First Tab')
          ],
        ),
      ),
    );
  }
}