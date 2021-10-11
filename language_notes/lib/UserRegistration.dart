import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key}) : super(key: key);

  @override
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 100.0, top: 100),
                child: Image.network(
                    "https://every-tuesday.com/wp-content/uploads/2018/04/create-colorful-gradient-lettering-adobe-illustrator.jpg"),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 500.0),
                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.0, 5.0, 30.0, 5.0),
                    child: OutlinedButton(
                        onPressed: () {
                          _isLoading
                              ? Scaffold(
                                  backgroundColor:
                                      Colors.black.withOpacity(0.5),
                                  body: Center(
                                      child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Platform.isAndroid
                                          ? CircularProgressIndicator()
                                          : CupertinoActivityIndicator(

                                              animating: true,
                                            ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Loading"),
                                      )
                                    ],
                                  )),
                                )
                              : Container();
                          signInWithGoogle().then((value) =>
                              Navigator.of(context)
                                  .pushReplacementNamed("/dashboard")
                                  .catchError((onError) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                          title: Text(onError.toString()));
                                    });
                              }));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                child: Image.network(
                              "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-icon-png-transparent-background-osteopathy-16.png",
                              height: 27,
                            )),
                            Container(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                child: new Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        )),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

Future<UserCredential?> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;
  if (googleAuth != null) {
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    var userCredentials =
        await FirebaseAuth.instance.signInWithCredential(credential);
    // Once signed in, return the UserCredential
    return userCredentials;
  }
}
