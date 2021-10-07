import 'dart:html';

import 'package:flutter/material.dart';
void main(){
  runApp(remainder());
}
class remainder extends StatefulWidget {
  const remainder({Key? key}) : super(key: key);

  @override
  _remainderState createState() => _remainderState();
}

class _remainderState extends State<remainder> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: safeArea (child: Text('Language Notes')),
=======
    return Scaffold(
      appBar: AppBar(title: Text("language notes"),),
>>>>>>> b98ac45e008d7c961f90d98d2cc07012dfc8bb50
    );
  }
}


