import 'package:flutter/material.dart';

class TextFieldDemo1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          padding: EdgeInsets.all(10.0),
          margin: EdgeInsets.only(
            top: 40.0,
          ),
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        hintText: '用户名/邮箱',
//                  helperText: '邮箱/手机号',
                        suffixIcon: new Icon(Icons.error),
                      ),
                      onSaved: (String value) {
                        print(value);
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      validator: (String value) {
                        print(value);
                        return value;
                      }))
            ],
          )),
    );
  }
}
