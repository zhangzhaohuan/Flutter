import 'package:flutter/material.dart';

class PositionedDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Positioned(
              child: new Container(
                child: new Text(
                  'cvzvzvz',
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    fontSize: 24,
                  ),
                ),
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              left: 0,
              top: 20,
            ),
            new Positioned(
              child: new Container(
                child: new Text(
                  'cvzvzvz',
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    fontSize: 24,
                  ),
                ),
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              left: 20,
              top: 20,
            ),
            new Container(
              child: new Center(
                child: new Text('container'),
              ),
              width: 100.0,
              height: 100.0,
              color: Colors.blue,
            )
          ],
        ),
        width: 320.0,
        height: 240.0,
        margin: EdgeInsets.only(top: 60),
        color: Colors.grey[300],
      ),
    );
  }
}
