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
        body: Stack(children: [
          Positioned(
            left: 50,
            top: 20,
            child: Container(
              color: Colors.lightGreen,
              width: 200,
              height: 200,
              child: Text(
                'hello',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ]));
  }
}
