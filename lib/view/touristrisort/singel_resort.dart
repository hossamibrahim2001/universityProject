import 'package:flutter/material.dart';

class SingelResort extends StatelessWidget {
  final String nameOfResort;

  const SingelResort({Key key, @required this.nameOfResort}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('$nameOfResort'),
      ),
      body: Center(
        child: Image.asset('assets/img.jpg'),
      ),
    );
  }
}
