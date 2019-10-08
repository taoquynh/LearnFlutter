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
              var newData = json.decode(snapshot.data.toString());
              return ListView.builder(
                itemBuilder: (BuildContext context, int index){
                  return Card( 
                    child: Column( 
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text('Index: ' + newData[index]['index'].toString()),
                        Text('Name: ' + newData[index]['name']),
                        Text('Height: ' + newData[index]['height'].toString()),
                        Text('Mass: ' + newData[index]['mass'].toString()),
                        Text('Address: ' + newData[index]['address']),
                        Text('Email: ' + newData[index]['email'])
                      ],
                    ),
                  );
                },
                itemCount: newData == null ? 0 : newData.length,
              );
            },
          ),
        ),
      ),
    );
  }
}

    