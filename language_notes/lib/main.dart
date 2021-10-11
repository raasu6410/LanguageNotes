
import 'package:animated_splash_screen/animated_splash_screen.dart';
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
    }else{
      return DashBoard();
    }
    // } else {
    //   return FutureBuilder(
    //       // future: profile(),
    //       builder: (BuildContext context, AsyncSnapshot snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return Scaffold(
    //         backgroundColor: Colors.white70,
    //         body: Center(
    //             child: Column(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             Platform.isAndroid
    //                 ? CircularProgressIndicator()
    //                 : CupertinoActivityIndicator(
    //                     animating: true,
    //                   ),
    //             Padding(
    //               padding: const EdgeInsets.all(8.0),
    //               child: Text("Loading"),
    //             )
    //           ],
    //         )),
    //       );
    //     }
    //   }
    //   );
    // }
  }
}
