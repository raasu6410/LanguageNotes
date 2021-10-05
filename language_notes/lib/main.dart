import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,
      home: LanguageNotes(),
    )
  );
}

class LanguageNotes extends StatefulWidget {
  const LanguageNotes({Key? key}) : super(key: key);




  _LanguageNotesState createState() => _LanguageNotesState();
}

class _LanguageNotesState extends State<LanguageNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Geth Raasu"),),
    );
  }
}
