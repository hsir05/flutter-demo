import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        print('mybutton was tapped');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('data'),
        )
        // child: new Row(
        //   children: <Widget>[
        //     new RaisedButton(
        //       onPressed: () {
        //         print(44444);
        //       },
        //       child: new Text('6666'),
        //     )
        //   ],
        // ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: 'flutter',
    home: new MyButton(),
  ));
}