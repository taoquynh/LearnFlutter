import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class StaticListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return listView1(context);
  }
}

Widget listView1(BuildContext context) {
  return Scaffold(
    appBar: CustomAppBar(title: 'Static List View 1', isHome: false,),
    body: ListView(
      children: <Widget>[
        ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Star'),
        ),
      ],
    ),
  );
}
