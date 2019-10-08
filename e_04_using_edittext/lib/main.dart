import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context){
    return MaterialApp( 
      title: 'Text Edit',
      home: MyEditText(),
    );
  }
}

class MyEditText extends StatefulWidget{
  @override 
  _MyEditText createState() => _MyEditText();
}

class _MyEditText extends State<MyEditText>{
  String results = '';
  final TextEditingController controller = TextEditingController();

  @override 
  Widget build(BuildContext context){
    return Scaffold( 
      appBar: AppBar( 
        title: Text('Edit Text'),
        backgroundColor: Colors.red,
      ),
      body: Container( 
        padding: const EdgeInsets.all(10.0),
        child: Center( 
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField( 
                decoration: InputDecoration(hintText: "Enter text here ..."), // hintText giống placeholder trong iOS
                onSubmitted: (String str){
                  setState(() {
                    results = results + '\n' + str; // cộng chuỗi
                    controller.text = ''; // set TextField về rỗng
                  });
                },
                controller: controller,
              ),
              Text(results)
            ],
          ),
        ),
      ),
    );
  }
}