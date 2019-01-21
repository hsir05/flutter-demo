import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '垂直',
      home: Scaffold(
        appBar:  new AppBar(
          title: new Text('flutter row'),
        ),
        body: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('测试'),
              Text('测试'),
              Expanded(child: Text('测试123'),),
              Text('测试'),
              Text('测试123123123'),
            ],
        ),)
      ),
    );
  }
}