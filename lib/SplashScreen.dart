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
         
      body: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              'hello flutter444',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18.0,
                height: 1.2,  
                fontFamily: "Courier",
                background: new Paint()..color=Colors.yellow,
              ),
            ),
            RaisedButton(
              child: Text("normal"),
              onPressed: () => {},
            ),
            OutlineButton(
              child: Text("normal"),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.thumb_up),
              onPressed: () => {},
            ),
            FlatButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            ),
            RaisedButton(
              color: Colors.blue,
              highlightColor: Colors.blue[700],
              colorBrightness: Brightness.dark,
              splashColor: Colors.grey,
              child: Text("Submit"),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              onPressed: () => {},
            )
          ],
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
