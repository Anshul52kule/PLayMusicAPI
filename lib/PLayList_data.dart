// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:math';
import 'package:flutter_application_1/musicDetails.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class myPlayList extends StatefulWidget {
  const myPlayList({super.key});

  @override
  State<myPlayList> createState() => _myPlayListState();
}

class _myPlayListState extends State<myPlayList> {
  List<dynamic> songs = [];
  List<dynamic> recentsongs = [];

  @override
  void initState() {
    super.initState();
    getSongs();
    getreccentSongs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
        children: [
          // Add a row of items here
          Container(
            height: 100, // Adjust the height according to your needs
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: recentsongs.length,
              itemBuilder: (context, index) {
                final recentsong = recentsongs[index];
                // final id = song['id'];
                // final title = song['title'];
                final imageadd = recentsong['img'];

                return Container(
                  width:
                      100, // Adjust the width of each item according to your needs
                  margin: EdgeInsets.all(8),
                  color: Colors.lightGreenAccent,

                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(imageadd),
                            radius: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          //////////////////////////////////////////////////////////////////////////////////////

          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                final song = songs[index];
                final id = song['id'];
                final title = song['title'];
                final imageadd = song['img'];

                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MusicDetails(
                          title: title,
                          imageadd: imageadd, audioUrl: '',
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 8,
                      right: 8,
                      top: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(imageadd),
                            radius: 30,
                          ),
                        ),
                        SizedBox(width: 8), // Add space here
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Text(
                                      title.toString(),
                                      style: GoogleFonts.roboto(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: LikeButton(
                                      likeBuilder: (isLiked) {
                                        return Icon(
                                          Icons.favorite,
                                          color: isLiked
                                              ? Colors.redAccent
                                              : Colors.grey,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  double randomWidth() {
    final x = Random().nextDouble() * 200;
    return x;
  }

  double randomHeight() {
    final x = Random().nextDouble() * 200 + 100;
    return x;
  }

  void getSongs() async {
    const url =
        "https://rapidapi.com/search/Music?sortBy=ByRelevance";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    print("users fetched");

    setState(() {
      songs = json["response"];
    });
  }

  void getreccentSongs() async {
    const url =
        "https://rapidapi.com/search/Music?sortBy=ByRelevance";
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    print("users fetched");

    setState(() {
      recentsongs = json["response"];
    });
  }
}
