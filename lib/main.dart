import 'package:flutter/material.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('测试1111', style: TextStyle(fontWeight: FontWeight.w500)),
             subtitle: Text('韩愈：15445879854'),
             leading: Icon(Icons.airplay, color:Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('测试1111', style: TextStyle(fontWeight: FontWeight.w500)),
             subtitle: Text('周敦颐：15445879854'),
             leading: Icon(Icons.account_box, color:Colors.lightBlue),
          ),
          new Divider(),
          ListTile(
            title: Text('测试1111', style: TextStyle(fontWeight: FontWeight.w500)),
             subtitle: Text('王羲之：15445879854'),
             leading: Icon(Icons.adjust, color:Colors.lightBlue),
          ),
          new Divider(),
        ],
      ),);
    return MaterialApp(
      title: 'stack',
      home: Scaffold(
        appBar:  new AppBar(
          title: new Text('flutter'),
        ),
        body: card
      ),
    );
  }
}