import 'package:flutter/material.dart';

class BuildInTypesLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    list
    var teas = ['green', 'black', 'chamomile', 'earl grey'];
    print(teas.any((element)=>element=='chamomile'));
    print(teas.every((element)=>element=='chamomile'));
    print(teas.where((element)=>element=='chamomile'));
    print(teas.where((element)=>element=='chamomile').toList());
    return Container(
      child: Text('list'),
    );
  }
}
