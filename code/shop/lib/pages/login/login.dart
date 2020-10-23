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
          child: Column(children: [
            Expanded(child: TextField()),
            Expanded(
                child: TextField(
              obscureText: true,
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: '密码', helperText: '请输入密码', hintText: '获得焦点可看'),
            )),
            GestureDetector(
              child: Text('可点击'),
              onTap: () {
                print('tabsdfs');
              },
            )
          ]),
        ));
  }
}
