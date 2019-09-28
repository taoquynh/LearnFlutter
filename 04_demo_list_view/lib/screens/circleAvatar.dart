import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class CircleAvatarList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _circleAvatar(context);
  }
}

Widget _circleAvatar(BuildContext context) {
  return Scaffold(
    appBar: CustomAppBar(
      title: 'Circle Avatar',
      isHome: false,
    ),
    body: ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/barrafina.jpg'),
          ),
          title: Text('Barrafina'),
          subtitle: Text('23 King StCambridge CB1 1AH, Vương Quốc Anh'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/bourkestreetbakery.jpg'),
          ),
          title: Text('Bourkestreetbakery'),
          subtitle: Text('32 Novy Arbat Street, Moscow, Nga'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/cafeloisl.jpg'),
          ),
          title: Text('Cafeloisl'),
          subtitle: Text('43 California Street, Nailsworth, SA 5083'),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://media.wired.com/photos/598e35994ab8482c0d6946e0/master/w_2560%2Cc_limit/phonepicutres-TA.jpg'),
          ),
          title: Text('Wafflewolf'),
          subtitle: Text('PAUL EDMONDSON/GETTY IMAGES'),
        )
      ],
    ),
  );
}
