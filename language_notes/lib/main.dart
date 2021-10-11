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

class _RemainderState extends State<Remainder> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    settings(),
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
          onPressed: () {},
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
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Settings",
              icon: Icon(Icons.settings)),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: "Profile",
              icon: Icon(Icons.person))
        ],
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
                width: 300,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                 onPressed: (){},
                  child: const Text('தமிழ்'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                height: 70,
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
                width: 300,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  onPressed: (){},
                  child: const Text('हिन्दी'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.blue),
                  onPressed: (){},
                  child: const Text('മലയാളം'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
                  onPressed: (){},
                  child: const Text('తెలుగు'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 300,
                height: 70,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.orange),
                  onPressed: (){},
                  child: const Text('ಕನ್ನಡ'),
                ),
              ),
            ),

          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child:Icon(Icons.add),
        onPressed: (){},
        elevation:50,
        backgroundColor: Colors.cyan,
        splashColor: Colors.yellowAccent,
        foregroundColor: Colors.black,
      ),
    );
  }
}

class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("asdfghjkl;"),
    );
  }
}

