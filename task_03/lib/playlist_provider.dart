
import 'package:flutter/cupertino.dart';
import 'package:musicplayer/song.dart';

class Playlist_Provider extends ChangeNotifier{
  final List<Song> _playlist = [
    Song(songName: "Bella Chiao Ringtone", audioPath: "assets/audio/bella.mp3"),
    Song(songName: "Krishna Flute Ringtone", audioPath: "assets/audio/krishna_flute.mp3"),
    Song(songName: "Let Me Down Slowly Ringtone", audioPath: "assets/audio/let_me_down.mp3"),
    Song(songName: "Let me Love You Ringtone", audioPath: "assets/audio/let_me_love.mp3"),
    Song(songName: "Tokyo Drift Ringtone", audioPath: "assets/audio/tokyo_drift.mp3"),
  ];

  int? _currentSongIndex;

  List<Song> get playlist =>_playlist;
  int? get currentSongIndex => _currentSongIndex;

  set currentSongIndex (int? newIndex){
    _currentSongIndex = newIndex;
    notifyListeners();
  }
}