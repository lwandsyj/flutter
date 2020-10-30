import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shop/pages/home/home.dart';
import 'package:shop/pages/login/login.dart';

import 'pages/home/home.dart';
import 'pages/login/login.dart';
import 'package:shop/pages/align/alignDemo.dart';
import 'package:shop/pages/gridView/index.dart';
import 'package:shop/pages/bottom/index.dart';

void main() {
  runApp(MyApp());
  if (Platform.isAndroid) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '第一sr个电商app',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/gridViewDemo': (context) => GridViewDemo(),
        '/login': (context) => Login(),
        '/align': (context) => AlignDemo(),
        'bottom': (context) => ScrollBottom()
      },
    );
  }
}
