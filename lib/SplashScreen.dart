import 'package:flutter/material.dart';

void main () {
  runApp(new MaterialApp(
    title: 'flutter',
    home: new TutorialHome(),
  ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.menu),
          tooltip: 'Navgation menu',
          onPressed: null,
        ),
        title: new Text('example title'),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              print('123');
            },
          )
        ],
      ),
      body: new Center(
        child: new Text('hello flutter'),
      ),
      floatingActionButton: new FloatingActionButton(
        tooltip: 'Add',
        child: new Icon(Icons.add),
        onPressed: () {
          print(555555);
        },
      ),
    );
  }
}
