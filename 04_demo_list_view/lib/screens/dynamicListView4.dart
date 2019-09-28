import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class DynamicListView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewHorizontal(context);
  }
}

// horizontal listView
Widget _listViewHorizontal(BuildContext context) {
  return Scaffold(
      appBar: CustomAppBar(
        title: 'List Horizontal',
        isHome: false,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.tealAccent,
            child: Text(' $index '),
          );
        },
      ));
}
