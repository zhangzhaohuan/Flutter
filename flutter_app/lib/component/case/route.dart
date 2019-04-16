//路由动态
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _openNewPage() {
    setState(() {
      Navigator.of(context).push(new MaterialPageRoute<Null>(
        builder: (BuildContext context) {
          return new Scaffold(
//            appBar: new AppBar(
//                title: new Text('新的页面')
//            ),
            body: new Center(
              child: new Text(
                '点击浮动按钮返回首页',
              ),
            ),
            floatingActionButton: new FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Icon(Icons.replay),
            ),
          );
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Text(
          '点击浮动按钮打开新页面',
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _openNewPage,
        child: new Icon(Icons.open_in_new),
      ),
    );
  }
}
