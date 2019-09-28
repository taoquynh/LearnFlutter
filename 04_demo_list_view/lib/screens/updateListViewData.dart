import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class UpdateListData extends StatefulWidget {
  @override
  BodyLayoutState createState() {
    return new BodyLayoutState();
  }
}

class BodyLayoutState extends State<UpdateListData> {
  List<String> titles = ['Sun', 'Moon', 'Star'];

  @override
  Widget build(BuildContext context) {
    return _myListView();
  }

  Widget _myListView() {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Nhấn vào row để thêm phần tử',
          isHome: false,
        ),
        body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            final item = titles[index];
            return Card(
              child: ListTile(
                title: Text(item),
                onTap: () {
                  //                             <-- onTap
                  setState(() {
                    titles.insert(index, 'Planet');
                  });
                },
                onLongPress: () {
                  //                            <-- onLongPress
                  setState(() {
                    titles.removeAt(index);
                  });
                },
              ),
            );
          },
        ));
  }
}
