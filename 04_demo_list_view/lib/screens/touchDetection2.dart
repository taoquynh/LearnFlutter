import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class TouchDetection2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _touchDetection2(context);
  }
}

Widget _touchDetection2(BuildContext context) {
  // the Expanded widget lets the columns share the space
  Widget column = Expanded(
    child: Column(
      // align the text to the left instead of centered
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Title',
          style: TextStyle(fontSize: 16),
        ),
        Text('subtitle'),
      ],
    ),
  );

  return Scaffold(
      appBar: CustomAppBar(
        title: 'Index limit',
        isHome: false,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: InkWell(
              onTap: () {
                print('tapped');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    column,
                    column,
                  ],
                ),
              ),
            ),
          );
        },
      ));
}
