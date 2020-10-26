import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: size.width,
                height: 200,
                color: Colors.yellow,
              ),
              Container(
                width: size.width,
                height: 200,
                color: Colors.lightGreen,
              ),
              Container(
                width: size.width,
                height: 200,
                color: Colors.lightBlue,
              ),
            ],
          ),
        ));
  }
}
