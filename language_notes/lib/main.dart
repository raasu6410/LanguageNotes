import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Remainder(),
  ));
}

class Remainder extends StatefulWidget {
  int _selectedindex = 0;
  @override
  _RemainderState createState() => _RemainderState();
}
int _selectedIndex = 0;

void _onItemTapped(int index) {
 setStat
}

class _RemainderState extends State<Remainder> {
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',

    ),
    Text(
      'Index 1: Business',

    ),
    Text(
      'Index 2: School',

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){},
            tooltip: "Edit",
            icon: Icon(Icons.edit),
          ),
          centerTitle: true,
          title: Text('Language Notes'),
        ),
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "Home",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "Settings",
              icon: Icon(Icons.settings)
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            label: "Profile",
              icon: Icon(Icons.person)
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSearchTextField(

            ),
          ),
          
        ],
      ),
    );
  }
}
