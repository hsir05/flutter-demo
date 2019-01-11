import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SplashScreen.dart';
// 启动页面
 void main() {
   runApp(new MaterialApp(
     title: '启动图demo',
     theme: new ThemeData(
         brightness: Brightness.light,
         backgroundColor: Colors.white,
         platform: TargetPlatform.iOS),
     home: new SplashScreen(),
     routes: {
       'TutorialHome': (BuildContext context) => TutorialHome()
     },
   ));
 }
 
 class SplashScreen extends StatefulWidget {
   @override
   _SplashScreenState createState() => new _SplashScreenState();
 }
 
 class _SplashScreenState extends State {
   startTime() async {
     //设置启动图生效时间
     var _duration = new Duration(seconds: 10);
     return new Timer(_duration, navigationPage);
   }
 
   void navigationPage() {
     Navigator.of(context).pushReplacementNamed('TutorialHome');
   }
 
   @override
   void initState() {
     super.initState();
     startTime();
   }
 
   @override
   Widget build(BuildContext context) {
     return new Scaffold(
       body: new Center(
        child: Image(
                image: AssetImage('images/timg.jpg'),
                // 图片充满手机
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.cover
              ),
        //  child: new Image.asset('assets/images/timg.jpg'),
       ),
     );
   }
 }