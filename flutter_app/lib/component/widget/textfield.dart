import 'package:flutter/material.dart';

class TextFieldDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TextFieldDemo1'),
      ),
      body: new Card(
        child: new ExampleWidget(),
      ),
    );
  }
}

class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key key}) : super(key: key);
  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

/// State for [ExampleWidget] widgets.
class _ExampleWidgetState extends State<ExampleWidget> {
  final TextEditingController _controllerAccount = new TextEditingController();
  final TextEditingController _controllerPw = new TextEditingController();
  bool showPw = false;
  @override
  Widget build(BuildContext context) {
    return new Column(
//      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          controller: _controllerAccount,
          decoration: new InputDecoration(
            hintText: '邮箱/手机号',
            errorMaxLines: 1,
            errorText: 'rrr',
            errorStyle: new TextStyle(
              color: Colors.red,
            ),
//            suffix: new IconButton(icon: Icon(Icons.remove_red_eye), onPressed: null),
            suffixIcon: new IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
                print('account');
                setState(() {
                  _controllerAccount.text = '';
                });
              },
            ),
          ),
          onChanged: (String value) {
            print(value);
//            print(_controllerAccount.text);
          },
        ),
        new TextField(
          controller: _controllerPw,
          obscureText: !showPw,
          decoration: new InputDecoration(
            hintText: '密码',
            errorMaxLines: 1,
            errorText: 'error',
            errorStyle: new TextStyle(
              color: Colors.red,
            ),
            suffix: new IconButton(
                icon: Icon(showPw?Icons.block:Icons.remove_red_eye),
                onPressed: (){
                  setState(() {
                    showPw = !showPw;
                  });
                }
            ),
            suffixIcon: new IconButton(
              icon: Icon(Icons.cancel),
              onPressed: () {
                print('account');
                setState(() {
                  _controllerPw.text = '';
                });
              },
            ),
          ),
          onChanged: (String value) {
            print(value);
            print(_controllerPw.text);
          },
        ),
        new RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return new AlertDialog(
                    title: Text('Rewind and remember'),
                    content: new Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Text(_controllerAccount.text),
                        new Text(_controllerPw.text),
                      ],
                    ),
                  );
                });
          },
          child: new Text('登陆'),
        ),
      ],
    );
  }
}
