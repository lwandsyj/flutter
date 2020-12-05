import 'package:flutter/material.dart';
import 'package:news/login.dart';

void main() => runApp(MyApp());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('跳转'),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          )
        ],
      ),
      appBar: AppBar(
        title: Text('首页'),
      ),
    );
  }
}

class MySimpleTest extends StatelessWidget {
  final String text;
  MySimpleTest({this.text}) : super();

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第一sr个电商app',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => Home(), '/login': (context) => Login()},
    );
  }
}
