import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List data = [
    {
      "name": "dart:core_buildInTypes_lists",
      "route": "/dart:core/buildInTypes"
    },
    {
      "name": "dart:core_buildInTypes_maps",
      "route": "/dart:core/buildInTypes/maps"
    },
    {
      "name": "dart:core_buildInTypes_sets",
      "route": "/dart:core/buildInTypes/sets"
    },
    {
      "name": "dart:core_classes_extends",
      "route": "/dart:core/classes/extends"
    },
    {"name": "dart:core_Constructor", "route": "/dart:core/constructor"},
    {"name": "dart:core_DateTime", "route": "/dart:core/dateTime"},
    {"name": "home", "route": "/home"},
    {"name": "dart:core_operator", "route": "/dart:core/operator"}
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: data.length,
        itemBuilder: (BuildContext context, int i) {
          return _buildRow(context, data[i]);
        },
      ),
    );
  }

  Widget _buildRow(BuildContext context, data) {
    return Column(
      children: <Widget>[
        ListTile(
            title: Text(data['name']),
            onTap: () {
              _toDetail(context, data);
            }),
        Divider(),
      ],
    );
  }

  void _toDetail(context, data) {
    Navigator.pushNamed(context, data['route']);
  }
}
