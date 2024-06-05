// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/PLayList_data.dart';
// import 'package:http/http.dart';

// class AudioPlayer extends ChangeNotifier {
//   int? currentsongIndex;

//   //AUDIOPLAYER
//   final AudioPlayer _audioPlayer = AudioPlayer();

//   //DURATION
//   Duration currentDuration = Duration.zero;
//   Duration totalDuration = Duration.zero;

//   //CONSTRUCTOR
//   AudioPlayer() {
//     listenToDuration();
//   }

//   bool isPlaying = false;

//   void play() async {
//     final String plat = myPlayList[currentSongIndex!].audioPath;
//   }

//   //LISTEN TO PROVIDER
//   void listenToDuration() {
//     _audioPlayer.onDurationChanged.listen((newDuration) {
//       totalDuration = newDuration;
//       notifyListeners();
//     });

//     _audioPlayer.onPositionChanged.listen((newPosition) {
//       currentDuration = newPosition;
//       notifyListeners();

//       _audioPlayer.onPlayerComplete.listen((event) {});
//     });
//   }
// }
