import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGetData(title: 'Get Data From Http',)
    );
  }
}

class MyGetData extends StatefulWidget{
  MyGetData({Key key, this.title}) : super(key: key);
  final String title;
  @override 
  _MyGetData createState() => _MyGetData();
}

class _MyGetData extends State<MyGetData>{
  final String url = 'https://swapi.co/api/people';
  List data;

  // Hàm get dữ liệu JSON
  Future<String> getJSONData() async {
    var response = await http.get( 
      // encode url
      Uri.encodeFull(url),
      // chỉ chấp nhận phản hồi JSON
      headers: {'Accept': 'application/json'}
      );

      // in body ra console
      print(response.body);

      // để thay đổi trạng thái ứng dụng, sử dụng hàm setState
      setState(() {
        // get dữ liệu JSON
        var dataConvertToJSON = json.decode(response.body);
        // lấy phần dữ liệu cần thiết và gán vào data
        data = dataConvertToJSON['results'];
      });

      return 'Successfull';
  }
  @override
  void initState(){
    super.initState();
    // gọi phương thức getJSONData
    this.getJSONData();
  }
  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar(
        title: Text('Get Data From Http'),),
      body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index){
          return Container( 
            child: Center( 
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Card( 
                    child: Container( 
                      child: Text( 
                      data[index]['name'],
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlueAccent
                      ),
                    ),
                    padding: EdgeInsets.all(15),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
