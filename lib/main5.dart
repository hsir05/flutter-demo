import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
    Widget build(BuildContext context) {
      return new Text('Count: $count');
    }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      child:  new Text('Increment'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment () {
    setState(() {
          ++_counter;
        });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new CounterIncrementor(onPressed: _increment,),
        new CounterDisplay(count: _counter),
      ],
    );
  }
}

void main () {
  runApp(new MaterialApp(
    title: 'flutter',
    home: new Counter(),
  ));
}