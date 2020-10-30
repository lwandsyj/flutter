import 'package:flutter/material.dart';
import 'package:plant/constants.dart';

import 'package:plant/detail/detail.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('logo'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Body(),
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(offset: Offset(0, -10), blurRadius: 20, color: kPrimaryColor.withOpacity(0.23))]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {},
            )
          ],
        ),
      ),
      //bottomSheet: (),
    );
  }
}

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeHeader(),
          TitleMore(title: 'Recommoned'),
          Recommoned(),
          TitleMore(title: 'Featured Plants'),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        Container(
                          height: 40,
                          color: Colors.red,
                        ),
                        Container(
                          height: 40,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 40,
                          color: Colors.green,
                        ),
                        Container(
                          height: 40,
                          color: Colors.grey,
                        )
                      ],
                      shrinkWrap: true,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
              height: size.height * 0.2 - 27,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(36), bottomRight: Radius.circular(36))),
              child: Row(
                children: [
                  Text(
                    'Hi Uishopy!',
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Image.asset("assets/images/logo.png")
                ],
              )),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              //alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // surffix isn't working properly  with SVG
                        // thats why we use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  Icon(Icons.search),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleMore extends StatelessWidget {
  final String title;

  TitleMore({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(children: [
        Stack(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 7,
                //margin: EdgeInsets.only(right: 5),
                color: kPrimaryColor.withOpacity(0.2),
              ),
            )
          ],
        ),
        Spacer(),
        FlatButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Text(
            'more',
            style: TextStyle(color: Colors.white),
          ),
          color: kPrimaryColor,
          onPressed: () {},
        )
      ]),
    );
  }
}

class Recommoned extends StatelessWidget {
  const Recommoned({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommonedItem(
            img: 'assets/images/image_1.png',
          ),
          RecommonedItem(
            img: 'assets/images/image_2.png',
          ),
          RecommonedItem(
            img: 'assets/images/image_3.png',
          ),
        ],
      ),
    );
  }
}

class RecommonedItem extends StatelessWidget {
  final String img;
  const RecommonedItem({Key key, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(left: 10, bottom: 10, top: 10),
      child: Column(
        children: [
          Image.asset(img),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Detail();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.25),
                      offset: Offset(0, 10),
                      blurRadius: 50,
                    )
                  ],
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "hello\n".toUpperCase(), style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "world".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text('\$12.09')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _MenuList2 extends StatelessWidget {
  _MenuList2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            child: Text('hello'),
          ),
          Container(
            child: Text('hello'),
          )
        ],
      ),
    );
  }
}
