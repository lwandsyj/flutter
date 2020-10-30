import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

import '../constants.dart';

class Detail extends StatelessWidget {
  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailBody(),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36)),
                  boxShadow: [BoxShadow(offset: Offset(0, 10), blurRadius: 60, color: kPrimaryColor.withOpacity(0.23))],
                  image: DecorationImage(image: AssetImage('assets/images/img.png'), fit: BoxFit.cover)),
            )
          ],
        )
      ],
    );
  }
}
