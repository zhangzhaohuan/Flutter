import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('GestureDetectorDemo');
      },
      child: Container(
        color: Colors.yellow,
        child: Text('TURN LIGHTS ON'),
      ),
    );
  }
}
