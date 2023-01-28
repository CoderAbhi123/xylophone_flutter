import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildkey({required int a, required Color color}) {
    return Expanded(
      child: ElevatedButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(a);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(a: 1, color: Colors.red),
              buildkey(a: 2, color: Colors.orange),
              buildkey(a: 3, color: Colors.yellow),
              buildkey(a: 4, color: Colors.green),
              buildkey(a: 5, color: Colors.teal),
              buildkey(a: 6, color: Colors.blue),
              buildkey(a: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
