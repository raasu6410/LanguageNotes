import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:language_notes/Dashboard.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LanguageNotes(),
  ));
}

class LanguageNotes extends StatefulWidget {
  const LanguageNotes({Key? key}) : super(key: key);

  @override
  _LanguageNotesState createState() => _LanguageNotesState();
}

class _LanguageNotesState extends State<LanguageNotes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedSplashScreen(
        splash: Text("Language Notes"),
        nextScreen: DashBoard(),

      ),
    );
  }
}
