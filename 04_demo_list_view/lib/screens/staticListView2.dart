import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class StaticListView2 extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return _listView2(context);
  }
}
Widget _listView2(BuildContext context){
  return Scaffold(
      appBar: CustomAppBar(
        title: 'Day of week',
        isHome: false,
      ),
      body: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            ListTile(
              title: Text('Sunday'),
            ),
            ListTile(
              title: Text('Monday'),
            ),
            ListTile(
              title: Text('Tuesday'),
            ),
            ListTile(
              title: Text('Wendsday'),
            ),
            ListTile(
              title: Text('Thursday'),
            ),
            ListTile(
              title: Text('Friday'),
            ),
            ListTile(
              title: Text('Saturday'),
            ),
            ListTile(
              // title: Text(''),
            )
          ]
        ).toList(),
      )
  );
}