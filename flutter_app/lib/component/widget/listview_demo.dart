//水平listview
import 'package:flutter/material.dart';

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('listview demo'),
      ),
//      body: new ListViewDemo1(),
      body: new ListViewDemo2(
        items:new List<String>.generate(100, (i)=>'Item $i'),
      ),
    );
  }
}

//水平listwiew
class ListViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          new Container(
            child: new Text('zhangsan'),
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
          new Container(
            child: new Text('zhangsan'),
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
          new Container(
            child: new Text('zhangsan'),
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
          new Container(
            child: new Text('zhangsan'),
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
          new Container(
            child: new Text('zhangsan'),
            width: 100.0,
            height: 100.0,
            color: Colors.red,
          ),
        ],
      ),
      height: 100.0,
    );
  }
}


//动态listview
class ListViewDemo2 extends StatelessWidget {
  final List<String> items;
  ListViewDemo2({Key key, @required this.items}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
    itemCount: items.length,
    itemBuilder: (context ,index){
      return new ListTile(
        title: new Text('${items[index]}'),
      );
    }
    );
  }
}
