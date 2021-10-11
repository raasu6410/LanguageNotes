import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var photo = FirebaseAuth.instance.currentUser!.photoURL;
  var email = FirebaseAuth.instance.currentUser!.email;
  // var phone = FirebaseAuth.instance.currentUser!.phoneNumber;
  var name = FirebaseAuth.instance.currentUser!.displayName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: CupertinoColors.activeBlue,
          title: Text("Settings"),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Column(children: [
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(photo!.isEmpty
                    ? "https://cdn.landesa.org/wp-content/uploads/default-user-image.png"
                    : photo!),
              ),
              title: Text(name!),
              subtitle: Text(email!),
            ),
          ),
          ElevatedButton.icon(
              onPressed: () => signout().then((value) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Center(
                              child: Text("Alert",
                                  style: TextStyle(
                                      color: CupertinoColors.destructiveRed)),
                            ),
                            content: Text(
                              "Are You Logout",
                              style:
                                  TextStyle(color: CupertinoColors.systemGrey),
                            ),
                            actions: [
                              CupertinoButton(
                                child: Text("Cancel"),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              CupertinoButton(
                                child: Text("Sure"),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushReplacementNamed('/userscreen');
                                },
                              )
                            ],
                          );
                        });
                  }).catchError((onError) {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(title: Text(onError.toString()));
                        });
                  }),
              icon: Icon(Icons.logout),
              label: Text("Logout"))
        ]));
  }
}
