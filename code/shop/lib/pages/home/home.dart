import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop/util/dialog.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _HomeState() {
    print('constructor');
    this.name = 'hello';
  }
  String name;
  int timeNum = 5;
  void onChangeName() {
    setState(() {
      this.name = 'flutter';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('initState');
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeNum <= 0) {
        timer.cancel();
      }
      setState(() {
        --timeNum;
      });
    });
  }

  @override
  void dispose() {
    print('dispose');
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('didUpdate');
  }

  final String _pic = 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1338789935,2929565487&fm=26&gp=0.jpg';
  @override
  Widget build(BuildContext context) {
    print('build');
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(_pic, width: size.width, height: size.height, fit: BoxFit.fill),
          Positioned(
            top: 30,
            right: 30,
            child: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: Text(timeNum.toString(), style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(25))),
            ),
          )
        ],
      ),
    );
  }
}
