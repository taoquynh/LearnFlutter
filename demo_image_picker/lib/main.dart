import 'dart:io'; // sử dụng File thì phải import dart:io

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'ImagePicker',
      home: ImagePickerApp(),
    );
  }
}

class ImagePickerApp extends StatefulWidget{
  @override 
  _ImagePickerApp createState() => _ImagePickerApp();
}

class _ImagePickerApp extends State<ImagePickerApp>{
  File _image;
  Future getImageFromGallery() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }
  Future getImageFromCamera() async {
    print("Picker is called");
      File img = await ImagePicker.pickImage(source: ImageSource.camera);
      print(img.path);
    setState(() {
      _image = img;
    });
  }
  
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(
          title: Text('Image Picker'),
        ),
        body: new Container(
          child: new Center(
            child: _image == null ? Text('No image selected') : (Image.file(_image)),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: getImageFromCamera,
          child: new Icon(Icons.camera),
        ),
      );
  }
}