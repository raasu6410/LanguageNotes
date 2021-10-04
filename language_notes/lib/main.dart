import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: LanguageNotes(),
    )
  );
}

class LanguageNotes extends StatefulWidget {
  const LanguageNotes({Key? key}) : super(key: key);

  @override
  _LanguageNotesState createState() => _LanguageNotesState();
}

class _LanguageNotesState extends State<LanguageNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

    );
  }
}
