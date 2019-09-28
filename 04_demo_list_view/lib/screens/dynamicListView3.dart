import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class DynamicListView3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewindex(context);
  }
}

Widget _listViewindex(BuildContext context) {
  return Scaffold(
      appBar: CustomAppBar(
        title: 'Index limit',
        isHome: false,
      ),
      body: ListView.separated(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('row $index'),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ));
}
