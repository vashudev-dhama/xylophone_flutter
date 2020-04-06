import 'package:flutter/material.dart';

import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  final player = AudioCache();
  void playSound(int soundNumber) {
    player.play('note$soundNumber.wav');
  }

  Expanded buildSoundButtons(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildSoundButtons(Colors.red, 1),
              buildSoundButtons(Colors.orange, 2),
              buildSoundButtons(Colors.yellow, 3),
              buildSoundButtons(Colors.green, 4),
              buildSoundButtons(Colors.blue, 5),
              buildSoundButtons(Colors.indigo, 6),
              buildSoundButtons(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
