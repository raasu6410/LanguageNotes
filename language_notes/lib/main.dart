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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: safeArea (child: Text('Language Notes')),
    );
  }
}


