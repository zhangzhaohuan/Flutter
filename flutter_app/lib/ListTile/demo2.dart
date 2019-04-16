import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
        title: 'demo2',
        home: new Scaffold(
          appBar: AppBar(
            title: Text('demo2'),
          ),
          body: new Container(
            child: new Text('hello'),
            width: 100,
            height: 100,
//          color: Colors.brown,
            margin: EdgeInsets.only(left: 10.0),
            padding: EdgeInsets.all(.0),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border(
                    top: BorderSide(
                        width: 2,
                        color: Colors.yellow,
                        style: BorderStyle.solid)),
//              border:Border.all(width: 3,color: Colors.black,style:BorderStyle.solid)
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.yellow, Colors.red])),
          ),
        ));
  }
}
