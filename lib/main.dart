import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() {
  runApp(const Music());
}
class Music extends StatelessWidget {
  const Music({super.key});

  void playMusic(int tone){
      final player = AudioPlayer();
      player.play(AssetSource('music-$tone.mp3'));
           
    }
  Expanded myButton(int tone, Color shade, String text){
    return Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 1.0),
                child: ElevatedButton(
                 onPressed: (){
                  playMusic(tone);
                  
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, 
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, 
                  ),
                  ),
                 child: Padding(
                   padding: const EdgeInsets.only(left: 20.0),
                   child: Row(
                     children: [
                      Icon(Icons.music_note,
                      color: shade,
                      
                      ),
                      SizedBox(width: 20.0,),
                       Text(text,
                       style: TextStyle(
                                     
                        color: shade,
                        fontSize: 20.0
                       ),
                       ),
                     ],
                   ),
                 )),
              ),
          );
  }
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myButton(1,const Color.fromARGB(255, 152, 88, 83),'Samsung Galaxy'),
            myButton(2,const Color.fromARGB(255, 129, 135, 87),'Samsung Note'),
            myButton(3,const Color.fromARGB(255, 83, 152, 136),'Nokia'),
            myButton(4,const Color.fromARGB(255, 83, 112, 152),'iPhone 11'),
            myButton(5,const Color.fromARGB(255, 135, 83, 152),'Whatsapp'),
            myButton(6,const Color.fromARGB(255, 152, 83, 88),'Samsung S7'),
            myButton(7,const Color.fromARGB(255, 152, 83, 103),'iPhone 6'),
             
          ],
          

        ),
      ),
    );
  }
}