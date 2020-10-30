import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/screen/detail.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: kTextColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/add_to_cart.svg', color: kTextColor),
              onPressed: () {},
            )
          ],
        ),
        body: ScreenBody());
  }
}

class ScreenBody extends StatelessWidget {
  const ScreenBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _Title(),
        _TabNavigator(),
        SizedBox(
          height: 20,
        ),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: 1,
            shrinkWrap: true,
            children: [
              _CardItem(img: 'assets/images/bag_1.png', name: 'Office COde', price: '234', color: 0xFF3D82AE),
              _CardItem(img: 'assets/images/bag_2.png', name: 'Office COde', price: '234', color: 0xFFD3A984),
              _CardItem(img: 'assets/images/bag_3.png', name: 'Office COde', price: '234', color: 0xFF989493),
              _CardItem(img: 'assets/images/bag_4.png', name: 'Office COde', price: '234', color: 0xFFE6B398),
              _CardItem(img: 'assets/images/bag_5.png', name: 'Office COde', price: '234', color: 0xFFFB7883),
              _CardItem(img: 'assets/images/bag_6.png', name: 'Office COde', price: '234', color: 0xFFAEAEAE),
            ],
          ),
        ))
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [Text('Women', style: TextStyle(color: kTextColor, fontSize: 20, fontWeight: FontWeight.bold))],
      ),
    );
  }
}

class _TabNavigator extends StatefulWidget {
  _TabNavigator({Key key}) : super(key: key);

  @override
  __TabNavigatorState createState() => __TabNavigatorState();
}

class __TabNavigatorState extends State<_TabNavigator> with TickerProviderStateMixin<_TabNavigator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TabBar(
        controller: TabController(length: 4, vsync: this),
        isScrollable: true, // 允许滚动
        tabs: [
          Tab(
            child: Text('Hand bag', style: TextStyle(color: kTextColor)),
          ),
          Tab(
            child: Text('Jewellery', style: TextStyle(color: kTextColor)),
          ),
          Tab(
            child: Text('Gootwear', style: TextStyle(color: kTextColor)),
          ),
          Tab(
            child: Text('Dress', style: TextStyle(color: kTextColor)),
          )
        ],
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final String img;
  final String name;
  final String price;
  final int color;
  const _CardItem({Key key, this.img, this.name, this.price, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ShopDetail(color: color);
        }));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(color: Color(color), borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Image.asset(
                  img,
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text(name, style: TextStyle(color: kTextLightColor)),
          ),
          Text('\$$price', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
