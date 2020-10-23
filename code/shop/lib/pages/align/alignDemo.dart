import 'package:flutter/material.dart';

class AlignDemo extends StatelessWidget {
  const AlignDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: AlignTest(),
      ),
    );
  }
}

class AlignTest extends StatelessWidget {
  const AlignTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(color: Colors.green),
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: RaisedButton(
                onPressed: () {
                  Size s = MediaQuery.of(context).size;
                  print(s);
                },
                child: Text('test'),
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('test'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('test'),
            )
          ],
        ));
  }
}
