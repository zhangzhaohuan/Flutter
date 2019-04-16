import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'webdevs',
        home: new Scaffold(
          body: new Container(
            child: new Text('123'),
          )
        ));
  }
}