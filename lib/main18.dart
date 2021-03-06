import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var stack = new Stack(
      alignment: const FractionalOffset(0.5, 0.8), // 对齐方式 有x轴与y轴之分 最小是0 最大是1
      children: <Widget>[
        new CircleAvatar(
          backgroundImage: new NetworkImage('http://www.sucaitianxia.com/sheji/pic/200902/20090208015345473.jpg'),
          radius: 100.0,
        ),
        new Container(
          decoration:  new BoxDecoration(
            color: Colors.lightBlue,
          ),
          padding: EdgeInsets.all(5.0),
          child: Text('测试stack'),
        )
      ],
    );
    return MaterialApp(
      title: 'stack',
      home: Scaffold(
        appBar:  new AppBar(
          title: new Text('flutter row'),
        ),
        body: Center(
          child: stack,
        )
      ),
    );
  }
}