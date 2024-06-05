import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/MODE/theme_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class mySettingPage extends StatefulWidget {
  const mySettingPage({super.key});

  @override
  State<mySettingPage> createState() => _mySettingPageState();
}

class _mySettingPageState extends State<mySettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SETTING"),
        ),
        body: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Darkmode",
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CupertinoSwitch(
                  value: Provider.of<themeProvider>(context, listen: false)
                      .isdarkMode,
                  onChanged: (value) =>
                      Provider.of<themeProvider>(context, listen: false)
                          .toggleTheme(),
                ),
              )
            ],
          ),
        ));
  }
}
