import 'package:flutter/material.dart';
import 'divs/TopDiv.dart';
import 'divs/MiddleDIv.dart';
import 'divs/BottomDiv.dart';

void main() {
  runApp(ScreenOne());
}

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            TopDiv(), //Top Div
            MiddleDIv(), //Middle Div
            BottomDiv() //Bottom Div
          ],
        ),
      ),
    ));
  }
}
