import 'package:flutter/material.dart';
import 'package:flutter_application_1/MyDrawer.dart';
import 'package:flutter_application_1/PLayList_data.dart';
import 'package:flutter_application_1/bottomnavigation.dart';
import 'package:google_fonts/google_fonts.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        title: Text(
          "P L A Y",
          style: GoogleFonts.play(color: Colors.lightGreenAccent),
        ),
      ),
      body: myPlayList(),
      bottomNavigationBar: MynavBar(),
    );
  }
}
