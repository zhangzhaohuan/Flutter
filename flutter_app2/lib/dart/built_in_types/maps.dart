import 'package:flutter/material.dart';

class BuildInTypesMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //map
    var map1 = {
      'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
      'Big Island': ['Wailea Bay', 'Pololu Beach'],
      'Kauai': ['Hanalei', 'Poipu']
    };

    // Get all the keys as an unordered collection
// (an Iterable).
    var keys1 = map1.keys;
    print(keys1);
    print(keys1.toSet());
    var values1 = map1.values;
    print(values1);
    print(values1.toSet());
    var map2 = {
      'name':'zhangsan'
    };
    var age = '18';
    map2.putIfAbsent('age', ()=> age);
    print(map2);
    print('containsKey ${map1.containsKey('Oahu')}');
    return Container(
      child: Text('map'),
    );
  }
}
