
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';
import 'UserRegistration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    routes: <String, WidgetBuilder>{
      '/dashboard': (BuildContext context) => DashBoard(),
      '/userscreen': (BuildContext context) => UserRegistration(),
    },
    debugShowCheckedModeBanner: false,
    home: LanguageNotes(),
  ));
}
CollectionReference userRef = FirebaseFirestore.instance.collection('user');
var email = FirebaseAuth.instance.currentUser!.email;
var name = FirebaseAuth.instance.currentUser!.displayName;
class LanguageNotes extends StatefulWidget {
  const LanguageNotes({Key? key}) : super(key: key);

  @override
  _LanguageNotesState createState() => _LanguageNotesState();
}

class _LanguageNotesState extends State<LanguageNotes> {

  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return Container(
      child: AnimatedSplashScreen(
        splash: Text("Language Notes"),
        nextScreen: LaunchModule(),
      ),
    );
  }
}

class LaunchModule extends StatefulWidget {
  const LaunchModule({Key? key}) : super(key: key);

  @override
  _LaunchModuleState createState() => _LaunchModuleState();
}

class _LaunchModuleState extends State<LaunchModule> {
  @override
  Widget build(BuildContext context) {
    var uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      return UserRegistration();
    }
    else {
      return DashBoard();
    }
  }
}
