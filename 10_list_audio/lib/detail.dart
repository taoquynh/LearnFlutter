import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:list_audio/main.dart';

enum PlayerState { playing, pause }

class DetailScreen extends StatefulWidget {
  final ItemAudio audio;
  DetailScreen({Key key, @required this.audio});
  _DetailScreen createState() => _DetailScreen();
}

class _DetailScreen extends State<DetailScreen> {
  bool isPlay = true;

  AudioPlayer audioPlayer = AudioPlayer();

  play() async {
    await audioPlayer.play(widget.audio.audioURL);
  }

  stop() async {
    await audioPlayer.stop();
  }

  void change() {
    setState(() {
      if (isPlay) {
        play();
      } else {
        stop();
      }
      isPlay = !isPlay;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(widget.audio.id);
    return Scaffold(
        appBar: AppBar(
          title: Text('Nghe audio'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              stop();
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Tên tác phẩm:',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              Text(
                widget.audio.name,
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Giới thiệu:',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
              ),
              Text(
                widget.audio.description,
                style: TextStyle(fontSize: 16),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
              ),
              FloatingActionButton(
                  child: Icon(isPlay ? Icons.play_arrow : Icons.pause),
                  onPressed: () {
                    change();
                  })
            ],
          ),
        ));
  }
}
