import 'package:flutter/material.dart';
import 'package:flutter_app/pages/splash.dart';
import 'package:flutter_app/pages/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70,
      ),
      title: 'Startup Name Generator',
      home:  SplashWidget(),
      routes: <String, WidgetBuilder>{'/homePage': (_) => new HomePage()},
    );
  }
}


