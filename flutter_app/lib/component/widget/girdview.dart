import 'package:flutter/material.dart';

class GridViewDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        children: <Widget>[
          const Text('He\'d have you all unravel at the'),
          const Text('Heed not the rabble'),
          const Text('Sound of screams but the'),
          const Text('Who scream'),
          const Text('Revolution is coming...'),
          const Text('Revolution, they...'),
        ],
      ),
    );
  }
}



class GridViewDemo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('GridView image'),
      ),
      body: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20.0),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        crossAxisCount: 3,
        childAspectRatio: 0.75,
        children: <Widget>[
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
          new Image.network('http://image13.m1905.cn/uploadfile/2019/0111/thumb_1_150_203_20190111085951334723.jpg',fit: BoxFit.cover,),
        ],
      ),
    );
  }
}