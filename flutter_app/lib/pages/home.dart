import 'package:flutter/material.dart';
import 'package:flutter_app/component/widget/custom_painter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new CustomPaint(
            painter: new Sky(),
            size:  new Size(200.0, 100.0),
          ),
        ),
      ),
    );
  }
}
