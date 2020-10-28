import 'package:flutter/material.dart';

class ScrollBottom extends StatefulWidget {
  ScrollBottom({Key key}) : super(key: key);

  @override
  _ScrollBottomState createState() => _ScrollBottomState();
}

class _ScrollBottomState extends State<ScrollBottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('底部滚动条'),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.8,
        maxChildSize: 0.8,
        minChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            color: Colors.blue[100],
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
            ),
          );
        },
      ),
    );
  }
}
