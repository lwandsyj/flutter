import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        initialIndex: 1,
        child: Scaffold(
            appBar: AppBar(
              title: Text('测试'),
            ),
            body: AppBody(),
            endDrawer: Drawer(
              child: MediaQuery.removePadding(
                context: context,
                //移除抽屉菜单顶部默认留白
                removeTop: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                    ),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            leading: const Icon(Icons.add),
                            title: const Text('Add account'),
                          ),
                          ListTile(
                            leading: const Icon(Icons.settings),
                            title: const Text('Manage accounts'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}

class AppBarHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(hintText: '搜索'),
      ),
      actions: [
        Icon(Icons.share),
        SizedBox(
          width: 10,
        ),
        Icon(Icons.home)
      ],
      elevation: 0,
      backgroundColor: Colors.green,
      toolbarHeight: 100,
      bottom: TabBar(
        isScrollable: true,
        tabs: [Text('语文'), Text('数学'), Text('英语'), Text('计算机'), Text('体育'), Text('高级数组'), Text('数据结构'), Text('操作系统')],
      ),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(100);
}

class AppBody extends StatelessWidget {
  const AppBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          RaisedButton(
            child: Text('button1'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('button2'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('button3'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width * 0.8,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 120,
            child: Container(
              decoration: BoxDecoration(color: Colors.yellow),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text('hello'),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('flutter'),
          ),
          Divider(
            color: Colors.grey,
          ),
          RaisedButton(
            child: Text('关闭'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
