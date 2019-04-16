import 'package:flutter/material.dart';

class StackDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('stack'),
      ),
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Container(
              width: 200.0,
              height: 200.0,
              alignment: Alignment.center,
              color: Colors.red,
              child: new Text('name'),
            ),
            new Container(
              child: new Text('age'),
              color: Colors.yellow,
              width: 40.0,
              height: 40.0,
            ),
          ],
          alignment: FractionalOffset(0.5, 0),

        ),
        width: 300.0,
        height: 300.0,
        color: Colors.green,
      ),
    );
  }
}
