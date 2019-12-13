import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:list_audio/detail.dart';

class ListAudio {
  final String resultCount;
  final List<ItemAudio> results;
  ListAudio({this.resultCount, this.results});

  factory ListAudio.fromJson(Map<String, dynamic> json){
    var list = json['result'] as List;
    List<ItemAudio> resultList = list.map((i) => ItemAudio.fromJson(i)).toList();
    return ListAudio( 
      resultCount: json['resultCound'],
      results: resultList
    );
  }
}

class ItemAudio{
  final String id;
  final String name;
  final String description;
  final String audioURL;

  ItemAudio({this.id, this.name, this.description, this.audioURL});
  
  factory ItemAudio.fromJson(Map<String, dynamic> json){
    return ItemAudio( 
      id: json['id'],
      name: json['name'],
      description: json['description'],
      audioURL: json['audioURL']
    );
  }
}

void main() => runApp(MyApp());

Future<ListAudio> fetchPost() async {
    final response = await http.get('http://150.95.113.189:2015/audio.json');

  if (response.statusCode == 200) {
    // If the call to the server was successful, parse the JSON.
    return ListAudio.fromJson(json.decode(utf8.decode(response.bodyBytes)));
  } else {
    // If that call was not successful, throw an error.
    throw Exception('Failed to load fruit');
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListAudio',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  Future<ListAudio> listAudio;
  @override
  void initState() { // initState() chỉ gọi 1 lần
    super.initState();
    listAudio = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text('List Audio'),),
      // backgroundColor: Colors.teal,
      body: Center(
        child: FutureBuilder<ListAudio>(
      future: listAudio,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
        itemCount: snapshot.data.results.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(snapshot.data.results[index].name, style: TextStyle(fontSize: 18),),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailScreen(audio: snapshot.data.results[index],))
              );
            },
          );
        },
      );
        } else if (snapshot.hasError) {
          return Text(snapshot.error);
        }

        // By default, show a loading spinner.
        return CircularProgressIndicator();
      },
    ),),
    );
  }
}





// import 'dart:convert';
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;


// class Fruit {
//   final List<String> fruit;
//   Fruit({this.fruit});

//   factory Fruit.fromJson(Map<String, dynamic> json) {
//     var fruitFromJson = json['fruit'];
//     List<String> fruitList = new List<String>.from(fruitFromJson);
//     return Fruit( 
//       fruit: fruitList
//     );
//   }
// }

// void main() => runApp(MyApp());

// Future<Fruit> fetchPost() async {
//     final response =
//       await http.get('http://45.118.145.142:2015/fruit.json');

//   if (response.statusCode == 200) {
//     // If the call to the server was successful, parse the JSON.
//     return Fruit.fromJson(json.decode(response.body));
//   } else {
//     // If that call was not successful, throw an error.
//     throw Exception('Failed to load fruit');
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ListAudio',
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   _HomeScreen createState() => _HomeScreen();
// }

// class _HomeScreen extends State<HomeScreen> {
//   Future<Fruit> fruits;
//   List<String> listFruits;
//   @override
//   void initState() { // initState() chỉ gọi 1 lần
//     super.initState();
//     fruits = fetchPost();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold( 
//       backgroundColor: Colors.teal,
//       body: Center(
//         child: FutureBuilder<Fruit>(
//       future: fruits,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           listFruits = snapshot.data.fruit;
//           return ListView.builder(
//         itemCount: listFruits.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(listFruits[index]),
//           );
//         },
//       );
//         } else if (snapshot.hasError) {
//           return Text(snapshot.error);
//         }

//         // By default, show a loading spinner.
//         return CircularProgressIndicator();
//       },
//     ),),
//     );
//   }
// }