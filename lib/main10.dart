import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'flutter',
    home: new MyShowIcon(),
  ));
}

class MyShowIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(MyIcons.book,color: Colors.purple,),
        Icon(MyIcons.bingzhuangtu,color: Colors.red,),
        Icon(MyIcons.chuxuguan,color: Colors.green,),
      ],
    );
  }
}

class MyIcons {
  static const IconData bingzhuangtu = const IconData(
      0xec7d,  
      fontFamily: 'myIcon', 
      matchTextDirection: true
  );

  static const IconData book = const IconData(
    0xe614, 
    fontFamily: 'myIcon', 
    matchTextDirection: true
  );
  static const IconData chuxuguan = const IconData(
      0xe614,   
      fontFamily: 'myIcon', 
      matchTextDirection: true
  );
}