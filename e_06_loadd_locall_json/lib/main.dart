import 'dart:convert';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      title: 'Load local json',
      home: LoadLocalJson(),
    );
  }
}

class LoadLocalJson extends StatefulWidget {
  @override 
  _LoadLocalJson createState() => _LoadLocalJson();
}

class _LoadLocalJson extends State<LoadLocalJson>{
  List data;
  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Load local json'),
      ),

      body: Container( 
        child: Center( 
          child: FutureBuilder( 
            future: DefaultAssetBundle
              .of(context)
              .loadString('assets/data/data.json'),
            builder: (context, snapshot){
              // Decode JSON
              var new_data = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return Card( 
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('Index: ' + new_data[index]['index'].toString()),
                        Text('Name: ' + new_data[index]['name']),
                        Text('Height: ' + new_data[index]['height'].toString()),
                        Text('Mass: ' + new_data[index]['mass'].toString()),
                        Text('Address: ' + new_data[index]['address']),
                        Text('Email: ' + new_data[index]['email'])
                      ],
                    ),
                  );
                },
                itemCount: new_data == null ? 0 : new_data.length,
              );
            },
          ),
        ),
      ),
    );
  }
}

    