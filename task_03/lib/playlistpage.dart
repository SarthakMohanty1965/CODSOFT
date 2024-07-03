import 'package:flutter/material.dart';
import 'package:musicplayer/playlist_provider.dart';
import 'package:musicplayer/song.dart';
import 'package:provider/provider.dart';

import 'homepage.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<StatefulWidget> createState() => _MyPlaylistProvider();
}

class _MyPlaylistProvider extends State<StatefulWidget> {
  late final dynamic playlistProvider;
  @override
  void initState() {
    super.initState();
    playlistProvider = Provider.of<Playlist_Provider>(context, listen: false);
  }

  void gotoSong(int songIndex) {
    playlistProvider.currentSongIndex =(songIndex);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PLAYLIST',
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
      ),
      backgroundColor: Colors.indigoAccent,
      body: Container(
        margin: EdgeInsets.all(22),
        color: Colors.indigoAccent,
        child: Consumer<Playlist_Provider>(builder: (context, value, child) {
          final List<Song> playlist = value.playlist;

          return ListView.builder(
              itemCount: playlist.length,
              itemBuilder: (context, index) {
                final Song song = playlist[index];
                return ListTile(
                  title: Text(song.songName),
                  leading: const Icon(Icons.music_note_rounded),
                  onTap: () => gotoSong(index),
                );
              });
        }),
      ),
    );
  }
}
