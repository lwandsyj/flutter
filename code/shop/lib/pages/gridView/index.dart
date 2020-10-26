import 'package:flutter/material.dart';

class GridViewDemo extends StatefulWidget {
  GridViewDemo({Key key}) : super(key: key);

  @override
  _GridViewDemo createState() => _GridViewDemo();
}

class _GridViewDemo extends State<GridViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('gridView')),
        body: GridView.count(crossAxisCount: 2, children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
            child: Container(
              height: 600,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
              child: Text('first'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
            child: Container(
              height: 600,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 5, 5),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
              child: Text('first'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 10, 5),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
            child: Container(
              height: 300,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Color(0xFFd2d2d2))),
            ),
          )
        ]));
  }
}
