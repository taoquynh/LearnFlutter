import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class CustomListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _customList(context);
  }
}

Widget _customList(BuildContext context) {
// the Expanded widget lets the columns share the space
  Widget column = Expanded(
    child: Column(
      // align the text to the left instead of centered
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Tafo',
          style: TextStyle(fontSize: 16),
        ),
        Text('22 noi banh chung'),
      ],
    ),
  );

  return Scaffold(
      appBar: CustomAppBar(
        title: 'Custom List Item',
        isHome: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  column,
                  column,
                ],
              ),
            ),
          );
        },
      ));
}
