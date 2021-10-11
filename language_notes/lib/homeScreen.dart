import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'AddLanguage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Future<void> signout() async {
  (await GoogleSignIn().signOut());
  return FirebaseAuth.instance.signOut();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: CupertinoColors.activeBlue,
        leading: IconButton(
          onPressed: () {},
          tooltip: "Edit",
          icon: Icon(Icons.edit),
        ),
        centerTitle: true,
        title: Text('Language Notes'),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton:FloatingActionButton(

        child:Icon(Icons.add),
        onPressed: (){},
        elevation:0,
        backgroundColor: Colors.cyan,
        splashColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(),

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddLanguage()),
                    );
                  },
                  child: const Text('Tamil'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  onPressed: (){},
                  child: const Text('English'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: (){},
                  child: const Text('Hindi'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: (){},
                  child: const Text('Malayalam'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
                  onPressed: (){},
                  child: const Text('Telugu'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: (){},
                  child: const Text('Kanadam'),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
