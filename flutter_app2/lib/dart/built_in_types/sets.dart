import 'package:flutter/material.dart';

class BuildInTypesSets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    set
    var ingredients = Set();
    print(ingredients);
    print(ingredients.isEmpty);
    ingredients.add('gold');
    print(ingredients.isNotEmpty);
    print(ingredients);
    ingredients.addAll(['gold', 'titanium', 'xenon']);
    print(ingredients);
    print(ingredients.contains('titanium'));
    var nobleGases = Set.from(['xenon', 'argon']);
    print(nobleGases);
    var intersection = ingredients.intersection(nobleGases);
    print(intersection);
    return Container(
      child: Text('sets'),
    );
  }
}
