import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            title: Center(child: Text('登录')),
            actions: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.share),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.login),
              ),
            ],
            backgroundColor: Colors.green,
            bottom: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Text('语文'),
                  Text('数学'),
                  Text('英语'),
                  Text('英语'),
                  Text('体育'),
                  Text('音乐'),
                  Text('语文'),
                  Text('数学'),
                  Text('英语'),
                  Text('英语'),
                  Text('体育'),
                  Text('音乐'),
                ],
                controller: TabController(initialIndex: 1, length: 12, vsync: this))),
        body: Center(child: LoginForm()));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: '用户名'),
            ),
            TextFormField(decoration: InputDecoration(labelText: '密码'), obscureText: true),
            ElevatedButton(
              child: Text('登录'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Tooltip(message: '这是提示');
                  },
                );
              },
            ),
            Tooltip(
              message: '这是提示',
              child: Icon(Icons.storage),
            )
          ],
        ),
      ),
    );
  }
}
