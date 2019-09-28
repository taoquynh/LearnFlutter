import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class CustomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _customListView(context);
  }
}

Widget _customListView(BuildContext context) {
  return Scaffold(
      appBar: CustomAppBar(
        title: 'Custom List View',
        isHome: false,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.wb_sunny,
              color: Colors.yellow,
              size: 30,
            ),
            title: Text('Sun'),
          ),
          ListTile(
            leading: Icon(
              Icons.brightness_3,
              color: Colors.red,
              size: 30,
            ),
            title: Text('Moon'),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: Colors.blue,
              size: 30,
            ),
            title: Text('Star'),
          ),
          ListTile(
            trailing: Icon(
              Icons.ac_unit,
              color: Colors.orange,
              size: 30,
            ),
            title: Text('Snow'),
          ),
        ],
      ));
}
