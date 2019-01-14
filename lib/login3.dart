import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '轻签到',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('极速登录'),
        ),
        body: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,

          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.all(30.0),
                child: new Image.asset(
                  'images/login_logo.jpg',
                  scale: 1.8,
                )),
            new Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 15.0),
              child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                      child: new Image.asset(
                        'images/username.png',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    new Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            hintText: '请输入用户名',
                          ),
                        ))
                  ]),
            ),
            new Padding(
              padding: new EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 40.0),
              child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new Padding(
                      padding: new EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                      child: new Image.asset(
                        'images/password.png',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                    new Expanded(
                        child: new TextField(
                          decoration: new InputDecoration(
                            hintText: '请输入密码',
                          ),
                          obscureText: true,
                        ))
                  ]),
            ),
            new Container(
              width: 340.0,
              child: new Card(
                color: Colors.blue,
                elevation: 16.0,
                child: new FlatButton(
                    child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: new Text(
                        '极速登录',
                        style: new TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

