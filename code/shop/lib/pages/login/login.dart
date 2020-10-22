import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('登录'),
        ),
        body: Center(
          child: Column(children: [Expanded(child: TextField()), Expanded(child: TextField())]),
        ));
  }
}
