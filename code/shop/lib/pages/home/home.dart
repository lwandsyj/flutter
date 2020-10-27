import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    print('build');
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
                child: RaisedButton(
                  child: Text(this.name),
                  onPressed: () {
                    this.onChangeName();
                  },
                ),
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
