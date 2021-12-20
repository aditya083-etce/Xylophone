import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void aUdioPlAyer(int no) {
    final player = AudioCache();
    if (no < 9)
      player.play('note$no.wav');
    else {
      if (no == 9)
        player.play('distort-meow.wav');
      if (no == 10)
        player.play('scary.mp3');
      if (no == 11)
        player.play('falling.wav');
    }
  }

  Expanded creatingPLaybuttons({Color color,int number, Text text})
  {
    return Expanded(
      child: FlatButton(
        onPressed: (){ aUdioPlAyer(number); },
        color: color,
        child: text,
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
              creatingPLaybuttons(color: Colors.redAccent, number: 1, text: Text("😀",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.orange, number: 2, text: Text("😉",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.yellow, number: 3, text: Text("🙂",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.green, number: 4, text: Text("🤗",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.teal, number: 5, text: Text("🤩",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.blue, number: 6, text: Text("😄",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.purple, number: 7, text: Text("😙",style: TextStyle(fontSize: 70.0))),
              creatingPLaybuttons(color: Colors.red, number: 8, text: Text("😎",style: TextStyle(fontSize: 70.0))),
              // Row(
              //   children: <Widget>[
              //     creatingPLaybuttons(color: Colors.yellow[900], number: 9, text: Text("😹",style: TextStyle(fontSize: 70.0))),
              //     creatingPLaybuttons(color: Colors.yellow[900], number: 10, text: Text("👻",style: TextStyle(fontSize: 70.0))),
              //     creatingPLaybuttons(color: Colors.yellow[900], number: 11, text: Text("🤡",style: TextStyle(fontSize: 70.0))),
              //   ]
              // )
            ],
           )
          ),
        ),
      );
  }
}
