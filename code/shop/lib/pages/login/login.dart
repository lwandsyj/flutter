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
    var _scaffoldKey = new GlobalKey();
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            title: Center(child: Text('登录')),
            actions: [
              Builder(
                builder: (context) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: IconButton(
                      icon: Icon(Icons.share),
                      onPressed: () {
                        //_scaffoldKey.currentState.openDrawer();
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  );
                },
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
        body: Center(
          child: LoginForm(),
        ),
        drawer: Drawer(
          child: Center(
            child: Text('Drawer'),
          ),
        ));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.addListener(() {
      print('input ${controller.text}');
    });
    return Form(
      child: Center(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: '用户名'),
              controller: controller,
            ),
            TextFormField(decoration: InputDecoration(labelText: '密码'), obscureText: true),
            ElevatedButton(
              child: Text('登录'),
              onPressed: () {
                print(controller.text);
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
