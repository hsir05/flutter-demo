import 'package:flutter/material.dart';

class PaddingTestRoute extends StatelessWidget {

  Widget redBox=DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      //上下左右各添加16像素补白
      padding: EdgeInsets.symmetric(vertical:16.0),
      child: Column(
        //显式指定对齐方式为左对齐，排除对齐干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            //左边添加8像素补白
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("Hello world"),
          ),
          Padding(
            //上下各添加8像素补白
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: Text("I am Jack"),
          ),
          Padding(
            // 分别指定四个方向的补白
            padding: const EdgeInsets.fromLTRB(20.0,.0,20.0,20.0),
            child: Text("Your friend"),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: double.infinity, //宽度尽可能大
              minHeight: 50.0 //最小高度为50像素
            ),
            child: Container(
                height: 5.0, 
                child: redBox 
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'padding',
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text('padding')
      ),
      body: new PaddingTestRoute()
    ),
  ));
}