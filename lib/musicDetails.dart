import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:audioplayers/audioplayers.dart';

class MusicDetails extends StatefulWidget {
  final String title;
  final String imageadd;
  final String audioUrl;

  const MusicDetails({
    Key? key,
    required this.title,
    required this.imageadd,
    required this.audioUrl,
  }) : super(key: key);

  @override
  _MusicDetailsState createState() => _MusicDetailsState();
}

class _MusicDetailsState extends State<MusicDetails> {
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();
    // audioPlayer.setUrl(widget.audioUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: GoogleFonts.raleway(),
        ),
      ),
      // body: Column(
      //   children: [
      //     Center(
      //       child: Container(
      //         decoration: BoxDecoration(
      //             color: const Color.fromARGB(255, 100, 100, 100),
      //             borderRadius: BorderRadius.circular(30)),
      //         margin: EdgeInsets.all(30),
      //         padding: const EdgeInsets.all(20),
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding: EdgeInsets.all(8),
      //               child: InkWell(
      //                 child: CircleAvatar(
      //                   backgroundImage: NetworkImage(widget.imageadd),
      //                   radius: 100,
      //                 ),
      //               ),
      //             ),
      //             Text(
      //               widget.title,
      //               style: GoogleFonts.varela(
      //                 fontSize: 20,
      //               ),
      //             ),
      //             Padding(padding: EdgeInsets.only(top: 20)),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               children: [
      //                 StreamBuilder<double>(
      //                   stream: audioPlayer.positionStream,
      //                   builder: (context, snapshot) {
      //                     var position = snapshot.data ?? Duration.zero;
      //                     var duration = audioPlayer.duration ?? Duration.zero;
      //                     return Text(
      //                       position.toString().split('.').first,
      //                     );
      //                   },
      //                 ),
      //                 StreamBuilder<double>(
      //                   stream: audioPlayer.positionStream,
      //                   builder: (context, snapshot) {
      //                     var position = snapshot.data ?? Duration.zero;
      //                     var duration = audioPlayer.duration ?? Duration.zero;
      //                     return Text(
      //                       duration.toString().split('.').first,
      //                     );
      //                   },
      //                 ),
      //               ],
      //             ),
      //             StreamBuilder<double>(
      //               stream: audioPlayer.positionStream,
      //               builder: (context, snapshot) {
      //                 var position = snapshot.data ?? Duration.zero;
      //                 var duration = audioPlayer.duration ?? Duration.zero;
      //                 return Slider(
      //                   min: 0,
      //                   max: duration.inSeconds.toDouble(),
      //                   value: position.inSeconds.toDouble(),
      //                   activeColor: Colors.lightGreenAccent,
      //                   onChanged: (value) {
      //                     audioPlayer.seek(Duration(seconds: value.toInt()));
      //                   },
      //                 );
      //               },
      //             ),
      //             Padding(
      //               padding: const EdgeInsets.all(15.0),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   GestureDetector(
      //                     onTap: () {
      //                       audioPlayer.previous();
      //                     },
      //                     child: Icon(
      //                       Icons.skip_previous,
      //                       size: 30,
      //                     ),
      //                   ),
      //                   GestureDetector(
      //                     onTap: () {
      //                       audioPlayer.play();
      //                     },
      //                     child: Icon(
      //                       Icons.play_arrow,
      //                       size: 30,
      //                     ),
      //                   ),
      //                   GestureDetector(
      //                     onTap: () {
      //                       audioPlayer.pause();
      //                     },
      //                     child: Icon(
      //                       Icons.pause,
      //                       size: 30,
      //                     ),
      //                   ),
      //                   GestureDetector(
      //                     onTap: () {
      //                       audioPlayer.next();
      //                     },
      //                     child: Icon(
      //                       Icons.skip_next,
      //                       size: 30,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
