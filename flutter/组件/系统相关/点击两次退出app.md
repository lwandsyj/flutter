1. WillPopScope

        return SafeArea(
            child: WillPopScope(
                child: Scaffold(
                backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
                bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: _tabIndex,
                    items: bottomTabs,
                    onTap: (index) async {
                    setState(() {
                        _tabIndex = index;
                        currentPage = tabBodies[_tabIndex];
                    });
                    },
                ),
                body: IndexedStack(
                    index: _tabIndex,
                    children: tabBodies,
                ),
                ),
                onWillPop: ()   {
                // 点击返回键的操作
                if (lastPopTime == null || DateTime.now().difference(lastPopTime) > Duration(seconds: 2)) {
                    lastPopTime = DateTime.now();
                    ToastUtil.show('再按一次退出应用');
                } else {
                    lastPopTime = DateTime.now();
                    // 退出app
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                }
                },
            ),
            );
        }