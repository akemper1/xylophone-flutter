import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

void playSound(int sound) {
  final player = AudioCache();
  player.play('note$sound.wav');
}

Expanded buildKey({Color buttonColor, int sound}) {
  return Expanded(
    child: FlatButton(
      color: buttonColor,
      onPressed: () {
        playSound(sound);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(buttonColor: Colors.red, sound: 1),
              buildKey(buttonColor: Colors.orange, sound: 2),
              buildKey(buttonColor: Colors.yellow, sound: 3),
              buildKey(buttonColor: Colors.green, sound: 4),
              buildKey(buttonColor: Colors.teal, sound: 5),
              buildKey(buttonColor: Colors.blue, sound: 6),
              buildKey(buttonColor: Colors.purple, sound: 7),
            ],
          ),
        ),
      ),
    );
  }
}
