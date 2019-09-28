import 'package:flutter/material.dart';
import '../extension/customAppar.dart';

class BodyLayout extends StatefulWidget {
  @override
  BodyLayoutState1 createState() {
    return new BodyLayoutState1();
  }
}

class BodyLayoutState1 extends State<BodyLayout> {
  // Theo dõi trạng thái của các mục trong danh sách
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();

  // dữ liệu
  List<String> _data = ['Sun', 'Moon', 'Star'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'Nhấn vào nút để thêm phần tử',
          isHome: false,
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 500,
              child: AnimatedList(
                // cung cấp khoá cho các mục
                key: _listKey,
                initialItemCount: _data.length,
                // tương tự như ListView itemBuilder, thì AnimatedList có thêm thuộc tính animation
                itemBuilder: (context, index, animation) {
                  return _buildItem(_data[index], animation);
                },
              ),
            ),
            RaisedButton(
              child: Text('Insert item', style: TextStyle(fontSize: 20)),
              onPressed: () {
                _insertSingleItem();
              },
            ),
            RaisedButton(
              child: Text('Remove item', style: TextStyle(fontSize: 20)),
              onPressed: () {
                _removeSingleItem();
              },
            )
          ],
        ));
  }

  // animation row của Card
  Widget _buildItem(String item, Animation animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: Card(
        child: ListTile(
          title: Text(
            item,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }

  void _insertSingleItem() {
    String newItem = "Planet";
    // insert vào index 2
    int insertIndex = 2;
    // thêm item vào data
    _data.insert(insertIndex, newItem);
    // thêm vào AnimatedListState
    _listKey.currentState.insertItem(insertIndex);
  }

  void _removeSingleItem() {
    int removeIndex = 2;
    // xoá item
    String removedItem = _data.removeAt(removeIndex);
    // animation khi xoá
    AnimatedListRemovedItemBuilder builder = (context, animation) {
      return _buildItem(removedItem, animation);
    };
    // Xoá từ AnimatedListState
    _listKey.currentState.removeItem(removeIndex, builder);
  }
}
