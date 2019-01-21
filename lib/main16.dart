import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'row',
      home: Scaffold(
        appBar:  new AppBar(
          title: new Text('flutter row'),
        ),
        body: new Row(
          children: <Widget>[
            Expanded(
              child:new RaisedButton(
                onPressed: (){},
                color: Colors.orangeAccent,
                child: new Text('button'),
              ),),
            Expanded(
              child: new RaisedButton( 
                onPressed: (){},
                color: Colors.redAccent,
                child: new Text('button'),
              ),),
              Expanded(
                child:new RaisedButton(
              onPressed: (){},
              color: Colors.yellowAccent,
              child: new Text('button'),
            ),),
          ],
        ),
      ),
    );
  }
}