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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset("assest/logo.jpg"),
            Text(
              "Sign up your account",
              style: TextStyle(color: CupertinoColors.systemGrey, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 150,
              child: OutlinedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {
                  signInWithGoogle().then((value) => print("GoogleSign Success"));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png",
                      width: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
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