import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text("Settings",style: TextStyle(
                  fontSize: 30,
                  color: CupertinoColors.systemRed
              ),)),
              Icon(Icons.settings)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Coming Soon......"
              ,style: TextStyle(
                  color: CupertinoColors.systemGrey
                ),)
            ],
          )
        ],
      ),
    );
  }
}
