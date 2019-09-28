import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class TouchDetection1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _touchDetection(context);
  }
}

Widget _touchDetection(BuildContext context) {
  return Scaffold(
      appBar: CustomAppBar(
        title: 'Index limit',
        isHome: false,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Sun'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Sun');
            },
          ),
          ListTile(
            title: Text('Moon'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Moon');
            },
          ),
          ListTile(
            title: Text('Star'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('Star');
            },
          ),
        ],
      ));
}
