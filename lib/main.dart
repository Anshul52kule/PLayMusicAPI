import 'package:flutter/material.dart';
import 'package:flutter_application_1/MODE/darkmode.dart';
import 'package:flutter_application_1/MODE/lightmode.dart';
import 'package:flutter_application_1/MODE/theme_provider.dart';
import 'package:flutter_application_1/MyDrawer.dart';
import 'package:flutter_application_1/PLayList_data.dart';
import 'package:flutter_application_1/bottomnavigation.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => themeProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myHomePage(),
      theme: Provider.of<themeProvider>(context).themeData,
    );
  }
}
