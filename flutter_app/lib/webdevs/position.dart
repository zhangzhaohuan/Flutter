import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

TextStyle bold24Roboto = new TextStyle(
  color: Colors.white,
  fontSize: 24.0,
  fontWeight: FontWeight.w900,
);

//文本添加样式
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body: new Container(
//            child: new Text(
//              'cvzvzvz',
//              textDirection: TextDirection.ltr,
//              style: bold24Roboto,
//            ),
//            width: 320.0,
//            height: 240.0,
//            margin: EdgeInsets.only(top: 60),
////            decoration: BoxDecoration(),
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}

//定位
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body: new Container(
//            child: new Stack(
//              children: <Widget>[
//                new Positioned(
//                  child: new Container(
//                    child: new Text(
//                      'cvzvzvz',
//                      textDirection: TextDirection.ltr,
//                      style: new TextStyle(
//                        fontSize: 24,
//                      ),
//                    ),
//                    width: 100,
//                    height: 100,
//                    color: Colors.red,
//                  ),
//                  left: 20,
//                  top: 20,
//                )
//              ],
//            ),
//            width: 320.0,
//            height: 240.0,
//            margin: EdgeInsets.only(top: 60),
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}

//旋转组件
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body:new Container( // gray box
//            child: new Center(
//              child:  new Transform(
//                child:  new Container( // red box
//                  child: new Text(
//                    "Lorem ipsum",
//                    style: bold24Roboto,
//                    textAlign: TextAlign.center,
//                  ),
//                  decoration: new BoxDecoration(
//                    color: Colors.red[400],
//                  ),
//                  padding: new EdgeInsets.all(16.0),
//                ),
//                alignment: Alignment.center,
//                transform: new Matrix4.identity()
//                  ..rotateZ(45 * 3.1415927 / 180),
//              ),
//            ),
//            width: 320.0,
//            height: 240.0,
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}

//缩放组件
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body:new Container( // gray box
//              child: new Center(
//                child:  new Transform(
//                  child:  new Container( // red box
//                    child: new Text(
//                      "Lorem ipsum",
//                      style: bold24Roboto,
//                      textAlign: TextAlign.center,
//                    ),
//                    decoration: new BoxDecoration(
//                      color: Colors.red[400],
//                    ),
//                    padding: new EdgeInsets.all(16.0),
//                  ),
//                  alignment: Alignment.center,
//                  transform: new Matrix4.identity()
//                    ..scale(2.0),
//                ),
//              ),
//            width: 320.0,
//            height: 240.0,
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}

//线性渐变
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body: new Container( // grey box
//            child: new Center(
//              child: new Container( // red box
//                child: new Text(
//                  "Lorem ipsum",
//                  style: bold24Roboto,
//                ),
//                decoration: new BoxDecoration(
//                  gradient: new LinearGradient(
//                    begin: const Alignment(0.0, -1.0),
//                    end: const Alignment(0.0, 2.0),
//                    colors: <Color>[
//                       Colors.red[50],
//                       Colors.yellow[50]
//                    ],
//                  ),
//                ),
//                padding: new EdgeInsets.all(16.0),
//              ),
//            ),
//            width: 320.0,
//            height: 240.0,
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}

//圆角
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body:  new Container( // grey box
//            child: new Center(
//              child: new Container( // red circle
//                child: new Text(
//                  "Lorem ipsum",
//                  style: bold24Roboto,
//                ),
//                decoration: new BoxDecoration(
//                  color: Colors.red[400],
//                  borderRadius: new BorderRadius.all(
//                    const Radius.circular(8.0),
//                  ),
//                ),
//                padding: new EdgeInsets.all(16.0),
//              ),
//            ),
//            width: 320.0,
//            height: 240.0,
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}
//阴影
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body:  new Container( // grey box
//            child: new Center(
//              child: new Container( // red box
//                child: new Text(
//                  "Lorem ipsum",
//                  style: bold24Roboto,
//                ),
//                decoration: new BoxDecoration(
//                  color: Colors.red[400],
//                  boxShadow: <BoxShadow>[
//                    new BoxShadow (
//                      offset: new Offset(0.0, 2.0),
//                      blurRadius: 4.0,
//                      color: const Color(0xcc000000),
//                    ),
//                    new BoxShadow (
//                      color: const Color(0x80000000),
//                      offset: new Offset(0.0, 6.0),
//                      blurRadius: 20.0,
//                    ),
//                  ],
//                ),
//                padding: new EdgeInsets.all(16.0),
//              ),
//            ),
//            width: 320.0,
//            height: 240.0,
//            decoration: new BoxDecoration(
//              border:Border.all(width: 3,color: Colors.black,style:BorderStyle.solid),
//            ),
//            margin: new EdgeInsets.only(bottom: 16.0),
//          ),
//        ));
//  }
//}

//圆
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//        title: 'webdevs',
//        home: new Scaffold(
//          body:  new Container( // grey box
//            child: new Center(
//              child: new Container( // red circle
//                child: new Text(
//                  "Lorem",
//                  style: bold24Roboto,
//                ),
//                decoration: new BoxDecoration(
//                  color: Colors.red[400],
//                  shape: BoxShape.circle,
//                ),
//                padding: new EdgeInsets.all(24.0),
//              ),
//            ),
//            width: 320.0,
//            height: 320.0,
//            color: Colors.grey[300],
//          ),
//        ));
//  }
//}

//调整文本间距
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'webdevs',
        home: new Scaffold(
          body:  new Container( // grey box
            child: new Center(
              child: new Container( // red circle
                child: new Text(
                   "Lorem ipsum".toUpperCase().substring(0,4),
                  style: new TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 4.0,
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.red[400],
                ),
                padding: new EdgeInsets.all(24.0),
              ),
            ),
            width: 320.0,
            height: 320.0,
            color: Colors.grey[300],
          ),
        ));
  }
}

