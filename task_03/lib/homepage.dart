
import 'package:audioplayers/audioplayers.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<StatefulWidget> {
  final p = AudioPlayer();
  int _currentIndex = 1;
  List<Widget> body = [

   SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
              children:  [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Playlist',style: TextStyle(fontSize: 24,color: Colors.white70,fontWeight: FontWeight.bold),),
                    InkWell(
                      onTap: ()async{
                        final p = AudioPlayer();
                        await p.play(AssetSource("assets/audio/bella.mp3"));

                      },
                      child: ListTile(
                        leading: Icon(Icons.music_note_outlined),
                        focusColor: Colors.cyan,
                        title: Text("Over the Horizon.mp3", style: TextStyle(color: Colors.white70),),
                        onTap: (){

                        },
                      ),
                    ),
                    Divider(color: Colors.white12,),
                    ListTile(
                      leading: Icon(Icons.music_note_outlined),
                      title: Text("Tu hey.mp3",style: TextStyle(color: Colors.white70),),
                    ),
                    Divider(color: Colors.white12,),
                    ListTile(
                      leading: Icon(Icons.music_note_outlined),
                      title: Text("Barish.mp3",style: TextStyle(color: Colors.white70),),
                    ),
                    Divider(color: Colors.white12,),
                    ListTile(
                      leading: Icon(Icons.music_note_outlined),
                      title: Text("LegendsOfHanuman.mp3",style: TextStyle(color: Colors.white70),),
                    ),
                    Divider(color: Colors.white12,),
                    ListTile(
                      leading: Icon(Icons.music_note_outlined),
                      title: Text("JungleBook.mp3",style: TextStyle(color: Colors.white70),),
                    ),
                  ],

                ),

          ]),
        ),
      ),
    ),
    SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(68.0),
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(width: 0.6, color: Colors.white12),
                        color: Colors.indigo.shade400,
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(3, 4),
                              blurRadius: 1,
                              spreadRadius: 3,
                              color: Colors.black38)
                        ]),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_circle_fill_rounded,
                          color: Colors.black12,
                          size: 200,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                          "MUSIC PLAYER",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w300,
                              letterSpacing: 8,
                              color: Colors.black12),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: (){

                      },
                      focusColor: Colors.blue,
                      child: Container(
                        height: 44,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 0.6, color: Colors.black38),
                          /*color: Colors.indigo.shade400,*/

                        ),
                        child: const Icon(Icons.skip_previous_rounded,color: Colors.white70,),
                      ),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Container(
                      height: 44,
                      width: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 0.6, color: Colors.black38),
                      ),
                      child: const Icon(Icons.pause_rounded,color: Colors.white70,),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Container(
                      height:44,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(width: 0.6, color: Colors.black38),
                      ),
                      child: const Icon(Icons.skip_next_rounded,color: Colors.white70,),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ),
    const SafeArea(
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "About Me:",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2,
                      color: Colors.white,
                      fontSize: 24),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
            Text(
              'I am currently persuing BTech Degree with ComputerScience and Engineering, I have a weakness and '
              'it\'s that i cannot stay stagnant, i am eager to learn new things, experiment them and enhance them. '
              'That\'s why i keep Improving and keep developing even when there is no hope, my dream is to be the one whom everyone can Trust.'
              ' It\'s definitely difficult  but not Impossible to bring everyone believe in one thing. Having FAITH in the one who is always with you, "The All Mighty". ',
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
            ),
          ],
        ),
      )),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Musicoo",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
              color: Colors.amber),
        ),
        centerTitle: true,
        toolbarHeight: 45,
        elevation: 22,
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        shadowColor: Colors.black,
      ),
      body: Center(
        child: body[_currentIndex],
      ),
      backgroundColor: Colors.indigoAccent,
      bottomNavigationBar: CurvedNavigationBar(
        index: 1,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.indigoAccent,
        color: Colors.indigo.shade700,
        buttonBackgroundColor: Colors.indigo.shade900,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          Icon(
            Icons.library_music_rounded,
            color: Colors.amber,
          ),
          Icon(
            Icons.music_note_rounded,
            color: Colors.amber,
          ),
          Icon(
            Icons.info_rounded,
            color: Colors.white70,
          ),
        ],
      ),
    );
  }
}
