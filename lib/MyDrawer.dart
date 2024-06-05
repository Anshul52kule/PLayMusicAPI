import 'package:flutter/material.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/settingPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  List<ScreenHiddenDrawer> pages = [];

  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: "HOME",
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle(),
          ),
          myHomePage()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'SETTING',
            baseStyle: TextStyle(color: Colors.white),
            selectedStyle: TextStyle(),
          ),
          mySettingPage()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.black,
      screens: pages,
      initPositionSelected: 0,
    );
  }
}
