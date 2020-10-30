import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'package:plant/home/home.dart';
import 'package:plant/screen/shop.dart';

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
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        ),
        home: HomeScreen());
  }
}
