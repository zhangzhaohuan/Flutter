import 'package:flutter/material.dart';


class LifecycleAppPage extends StatefulWidget {
  final String title;
  LifecycleAppPage({Key key, this.title}) : super(key: key);
  @override
  _LifecycleAppPageState createState() => _LifecycleAppPageState();
}

class _LifecycleAppPageState extends State<LifecycleAppPage> with WidgetsBindingObserver {
  int count = 0;

  @override
  void initState() {
    print(widget.title);
    print('initState');
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
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
    );
  }
}


