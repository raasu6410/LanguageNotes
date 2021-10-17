
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_notes/UserRegistration.dart';
import 'Dashboard.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      '/dashboard': (BuildContext context) => DashBoard(),
      // '/userscreen': (BuildContext context) => UserRegistration(),
    },
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
    Firebase.initializeApp();
    return AnimatedSplashScreen(
      splash: Text("Language Notes",style: TextStyle(
        fontSize: 50,
        fontFamily: "Bunya",
        color: Colors.deepPurpleAccent
      ),),
      nextScreen: UserRegistration(),
    );
  }
}
