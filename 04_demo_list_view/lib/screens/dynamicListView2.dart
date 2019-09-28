import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class DynamicListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listViewIndex(context);
  }
}

Widget _listViewIndex(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Index unlimited',
        isHome: false,
      ),
      body: ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
  )
    );
}
