import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _cardLists(context);
  }
}

Widget _cardLists(BuildContext context) {
  final titles = [
    'bike',
    'boat',
    'bus',
    'car',
    'railway',
    'run',
    'subway',
    'transit',
    'walk'
  ];

  final icons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];

  return Scaffold(
      appBar: CustomAppBar(
        title: 'Cards',
        isHome: false,
      ),
      body: ListView.builder(
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            //                           <-- Card widget
            child: ListTile(
              leading: Icon(icons[index]),
              title: Text(titles[index]),
            ),
          );
        },
      ));
}
