import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const Music());
}
class Music extends StatelessWidget {
  const Music({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 220, 198, 255), 
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 170, 143, 243),
        title: Text('Tones',
        style: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          
        ),
        ),
        ),
        body: Column(
          children: [
            ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-1.mp3'));
             },
             child: Text('Samsung Galaxy',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
             ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-2.mp3'));
             },
             child: Text('Samsung Note',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
             ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-3.mp3'));
             },
             child: Text('Nokia',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
             ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-4.mp3'));
             },
             child: Text('iPhone11',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
             ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-5.mp3'));
             },
             child: Text('Whatsapp',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
             ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-6.mp3'));
             },
             child: Text('Samsung S7',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
             ElevatedButton(
             onPressed: (){
              final player = AudioPlayer();
              player.play(AssetSource('music-7.mp3'));
             },
             child: Text('iPhone6',
             style: TextStyle(

              color: Colors.blueGrey,
              fontSize: 20.0
             ),
             )),
          ],
          

        ),
      ),
    );
  }
}