
import 'package:audioplayers/audioplayers.dart';
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

  int? _currentSongIndex = 1;

  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  Playlist_Provider(){
    onComplete();
  }

  //play
  play() async{
    final String path = _playlist[_currentSongIndex!].audioPath;
    await _audioPlayer.stop();
    await _audioPlayer.play(DeviceFileSource(path));
    _isPlaying = true;
    notifyListeners();
  }
  //pause
   pause() async{
    await _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }
  //resume
   resume() async{
    await _audioPlayer.resume();
    _isPlaying = true;
    notifyListeners();
  }

  playorpause() async{
   if(_isPlaying){
     pause();
   }else{
     resume();
   }
  }

   rightskip() async{
    if(_currentSongIndex!=null){
      if(_currentSongIndex!= _playlist.length-1){
        currentSongIndex=_currentSongIndex!+1;

      }else{
        currentSongIndex=0;
      }

    }
  }
   leftskip()async{
    if(_currentSongIndex! >0){
      currentSongIndex=_currentSongIndex!-1;
    }else{
        currentSongIndex =_playlist.length-1;
    }
  }
  onComplete(){
    notifyListeners();
    _audioPlayer.onPlayerComplete.listen((event) { rightskip();});
  }

  List<Song> get playlist =>_playlist;
  int? get currentSongIndex => _currentSongIndex;
  bool get isPlaying=>_isPlaying;

  set currentSongIndex (int? newIndex){
    _currentSongIndex = newIndex;
    if(newIndex !=null){
      play();
    }
    notifyListeners();
  }
}