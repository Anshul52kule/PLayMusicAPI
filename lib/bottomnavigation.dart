import 'package:flutter/material.dart';
import 'package:flutter_application_1/settingPage.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MynavBar extends StatefulWidget {
  const MynavBar({super.key});

  @override
  State<MynavBar> createState() => _MynavBarState();
}

class _MynavBarState extends State<MynavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRect(
        child: GNav(
          tabs: [
            GButton(
              icon: Icons.home_max_outlined,
              text: 'HOME',
            ),
            GButton(
              icon: Icons.motion_photos_on_outlined,
              text: 'SEARCH',
            ),
            GButton(
              icon: Icons.crop_square_outlined,
              text: 'YOUR LIBRARY',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => mySettingPage(),
                    ));
              },
            ),
          ],
          activeColor: Colors.lightGreenAccent,
          color: Colors.white,
        ),
      ),
    );
  }
}
