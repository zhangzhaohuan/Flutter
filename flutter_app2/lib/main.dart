import 'package:flutter/material.dart';
import 'package:flutter_app2/pages/home.dart';
import 'package:flutter_app2/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text('dart语法'),
        ),
        body: Home(),
      ),
      routes: Routes.getRoutes(),
    );
  }
}