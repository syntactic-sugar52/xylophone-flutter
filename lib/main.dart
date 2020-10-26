import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound){
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  expandedWidget(colors, sound){
    return
    Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () {
          playSound(sound);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              expandedWidget(Colors.red, 1),
              expandedWidget(Colors.blueAccent, 2),
              expandedWidget(Colors.amber, 3),
              expandedWidget(Colors.teal, 4),
              expandedWidget(Colors.orange, 5),
              expandedWidget(Colors.deepPurple, 6),
              expandedWidget(Colors.green, 7),
            ],
          ),
        ),
      ),
    );
  }
}



