import 'package:demo_list_view/model/menu.dart';
import 'package:flutter/material.dart';
import 'screens.dart';


class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _listItem(context);
  }
}

Widget _listItem(BuildContext context) {
  final items = [
    Menu('Static ListView 1', StaticListView1()),
    Menu('Static ListView 2', StaticListView2()),
    Menu('Dynamic List View 1', DynamicListView1()),
    Menu('Dynamic List View 2', DynamicListView2()),
    Menu('Dynamic List View 3', DynamicListView3()),
    Menu('Dynamic List View 4', DynamicListView4()),
    Menu('Custom List View', CustomListView()),
    Menu('Custom List item', CustomListItem()),
    Menu('Circle Avatar', CircleAvatarList()),
    Menu('Cards', CardsList()),
    Menu('Touch Detection 1', TouchDetection1()),
    Menu('Touch Detection 2', TouchDetection2()),
    Menu('Update Animated List', BodyLayout()),
    Menu('Update List View Data', UpdateListData()),
  ];

  return ListView.separated(
    itemCount: items.length,

    itemBuilder: (context, index) {
      return ListTile(
        title: Text(items[index].name),
        onTap: (){
          print(items[index].identifier);
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => items[index].identifier));
        },
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );
}
