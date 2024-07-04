// ignore_for_file: unused_import

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/playlist_provider.dart';
import 'package:musicplayer/playlistpage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<StatefulWidget> {
  List<Widget> body = [
    const SafeArea(
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "About Me:",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2,
                  color: Colors.white,
                  fontSize: 24),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'I am currently persuing BTech Degree with ComputerScience and Engineering, I have a weakness and '
                'that is, I cann\'t stay stagnant, I experiment new things and enhance them with my technical abilities. '
                'That\'s why I keep Improving and keep developing even when there is no hope, my dream is to be the one whom everyone can Trust.'
                ' It\'s definitely difficult  but not Impossible to bring everyone believe in one thing. Having FAITH in the one who is always with you, "The All Mighty". ',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      )),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<Playlist_Provider>(builder: (context, value, child) {
      final playlist = value.playlist;
      final currentSongIndex = value.currentSongIndex ?? 0;
      final currentSong = playlist[currentSongIndex];
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "MUSIC PLAYER",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                color: Colors.white54),
          ),
          centerTitle: true,
          toolbarHeight: 45,
          elevation: 22,
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
          shadowColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Tooltip(
                message: 'Playlist',
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PlaylistPage()));
                    },
                    icon: const Icon(
                      Icons.library_music_rounded,
                      color: Colors.white70,
                    )),
              ),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 10,
                    )),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 28.0, left: 16, right: 16),
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
                            color: Colors.black26,
                            size: 200,
                          ),
                          Text(
                            "MUSIC PLAYER",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 8,
                                color: Colors.black12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () => value.leftskip(),
                      focusColor: Colors.blue,
                      child: const Icon(Icons.skip_previous_rounded,
                          color: Colors.white70, size: 54),
                    ),
                    const SizedBox(
                      width: 18,
                    ),
                    InkWell(
                        onTap: () => value.playorpause(),
                        child: Icon(
                          value.isPlaying
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          color: Colors.white70,
                          size: 72,
                        )),
                    const SizedBox(
                      width: 18,
                    ),
                    InkWell(
                        onTap: () => value.rightskip(),
                        child: const Icon(Icons.skip_next_rounded,
                            color: Colors.white70, size: 54)),
                    const SizedBox(
                      width: 18,
                    ),
                    IconButton(
                        onPressed: () => value.onShuffle(),
                        icon: const Icon(
                          Icons.shuffle_rounded,
                          color: Colors.white70,
                          size: 36,
                        )),
                  ],
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 22,
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.indigoAccent,
      );
    });
  }
}
