import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Remainder(),
  ));
}
class Remainder extends StatefulWidget {
  const Remainder({Key? key}) : super(key: key);

  @override
  _RemainderState createState() => _RemainderState();
}

class _RemainderState extends State<Remainder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text ('Language Notes'),
      ),
      body:Container(
child: Text('Edit'),
      )
    );
  }
}
