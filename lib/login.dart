import 'package:flutter/material.dart';
 
 
/***
 * login page base
 */
class loginState extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) { 
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("登录"),
        centerTitle: true,
      ),
      body: new loginView(),
    );
  }
 
}
TextEditingController userController   = new TextEditingController();
TextEditingController passController   = new TextEditingController();
 
 
/*****
 * login ui view
 */
class loginView extends StatelessWidget{
  @override
  Widget build(BuildContext context) { 
    return new ListView(
      children: <Widget>[
        new Column(
          children: <Widget>[
            loginTopImg(),
            loginUserEditInput(),
            loginPassEditInput(),
            loginButton(context)
          ],
        )
      ],
    );
  }
 
}
 
/****
 * login page top img
 */
// ignore: missing_function_parameters
Widget loginTopImg()  {
  return new Padding(
      padding: EdgeInsets.all(40.0),
      child: new Image.asset(
        'images/login_logo.jpg',
        width: 90.0,
        height: 70.0,
        scale: 1.3,
      ),
  );
}
/******
 * login user edit input
 * ********/
Widget loginUserEditInput(){
  return new Padding(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      child: new Stack(
        alignment: Alignment(1.0, 1.0),
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image(
                    image: AssetImage('images/username.png'),
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.fill,
                  ),
              ),
              new Expanded(
                  child: new TextField(
                    controller: userController,
                    decoration: new InputDecoration(
                      hintText: "请输入用户名"
                    ),
                  )
              ),
            ],
          ),
          new IconButton(icon: new Icon(Icons.clear), onPressed: (){
            userController.clear();
          })
        ],
      ) ,
  );
}
 
// /******
//  * login pass edit input
//  * ********/
Widget loginPassEditInput(){
  return new Padding(
      padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      child: new Stack(
        alignment: Alignment(1.0, 1.0),
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Image(
                    image: AssetImage('images/password.png'),
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.fill,
                  ),
              ),
              new Expanded(
                  child: new TextField(
                    controller: passController,
                    decoration: new InputDecoration(
                      hintText: "请输入密码"
                    ),
                  )
              ),
            ],
          ),
          new IconButton(icon: new Icon(Icons.clear), onPressed: (){
            passController.clear();
          })
        ],
      ),
  );
}
 
/************
 * login button
 * **********/
Widget loginButton(BuildContext context){
  return new Container(
    width: 300.0,
    padding: EdgeInsets.fromLTRB(30.0,15.0 , 30.0, 0.0),
    child: new Card(
      elevation: 10.0, // 正常情况下浮动的距离
      color: Colors.amber,
      child: new FlatButton(
          color: Colors.amber,
          child: new Padding(
              padding: EdgeInsets.all(8.0),
              child: new Text("登录",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 16.0
              ),),
          ),
        onPressed: (){
          _checkSub(context);
        },
      ),
    ),
  );
}
 
/********
 * 登录提交校验
 */
void _checkSub(BuildContext context){
  String msgStr = "";
  if(!userController.text.isNotEmpty){
    msgStr = "用户账号不能为空";
  }else  if(!passController.text.isNotEmpty){ 
    msgStr = "用户密码不能为空";
  }
 
  if(msgStr != ''){
    showDialog(
      context: context,
      builder: (context){
        return new AlertDialog(
          title: new Text("提示信息"),
          content: new Text(msgStr),
          actions: <Widget>[
            new FlatButton(child: new Text("确定"),onPressed: (){
              Navigator.of(context).pop();
            }),
          ],
        );
      }
    );
  }else{
    Navigator.of(context).push(
      new MaterialPageRoute(builder: (context){
        new loginState();
      }),
    );
  }
}

void main () {
  runApp(new MaterialApp(
    title: '登录',
    home: new loginState(),
  ));
}