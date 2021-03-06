import 'package:flutter/material.dart';
import 'view/main/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.teal,
        accentColor: Colors.tealAccent,
      ),
      home: MainScreen(),
    );
  }
}
