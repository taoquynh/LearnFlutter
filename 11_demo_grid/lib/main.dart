import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Grid Demo'),
      ),
      body: new GridView.count(
        crossAxisCount: 4,
        children: new List<Widget>.generate(16, (index) {
          return new GridTile(
            child: new Card(
              color: Colors.blue.shade200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Center(
                  child: new Text('tile $index'),
                ),
              )
            ),
          );
        }),
      ),
    );
  }
}