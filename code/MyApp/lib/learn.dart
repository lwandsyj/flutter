import 'package:flutter/material.dart';

class Table extends StatefulWidget {}

class _TableState extends State<Table> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BackButton(
        onPressed: () => (context) {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Text('123');
          }));
        },
      ),
    );
  }
}
