import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],

            ),
            flex: 2,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      print(Theme.of(context).toString());
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildButtonColumn(Icons.call, 'CALL'),
          buildButtonColumn(Icons.near_me, 'ROUTE'),
          buildButtonColumn(Icons.share, 'SHARE'),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Top Lakes'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'images/lake.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
        ],
      ),
    );
  }
}
