import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';

class ShopDetail extends StatefulWidget {
  final int color;
  ShopDetail({Key key, this.color}) : super(key: key);

  @override
  _ShopDetailState createState() => _ShopDetailState();
}

class _ShopDetailState extends State<ShopDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(widget.color),
        appBar: AppBar(
          backgroundColor: Color(widget.color),
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back_arrow.svg',
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: SvgPicture.asset("assets/icons/search.svg"),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset("assets/icons/cart.svg"),
              onPressed: () {},
            ),
            SizedBox(width: 10)
          ],
        ),
        body: _DetailBody());
  }
}

class _DetailBody extends StatelessWidget {
  final int color;
  const _DetailBody({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(size);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: 20,
                      right: 20,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        _ColorSize(),
                      ],
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

class _ColorSize extends StatelessWidget {
  const _ColorSize({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color', style: TextStyle(color: kTextLightColor, fontSize: 16, fontWeight: FontWeight.bold)),
              Row(
                children: [
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Size', style: TextStyle(color: kTextLightColor, fontSize: 16, fontWeight: FontWeight.bold)),
              Text('12cm')
            ],
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20 / 4,
        right: 20 / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
