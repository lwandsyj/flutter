1.  Scaffold : 是一个路由页的骨架，我们使用它可以很容易地拼装出一个完整的页面。

   每个页面的开头使用Scaffold ,但是当前页的其他组件就不需要再使用了。

2. Scaffold

+ appBar: 顶部状态栏

+ body: 主体

+ floatingActionButton: 悬浮按钮

+ drawer： 左边抽屉

+ endDrawer： 右边抽屉

+ bottomNavigationBar： 底部导航

+ backgroundColor： 背景颜色

3. SnackBar 显示在顶部的提示框

            fElevatedButton(
               onPressed: () {
                  final snackBar = SnackBar(
                     content: Text('Yay! A SnackBar!'),
                     action: SnackBarAction(
                     label: 'Undo',
                     onPressed: () {
                        // Some code to undo the change.
                     },
                     ),
                  );

                  // Find the Scaffold in the widget tree and use
                  // it to show a SnackBar.
                  Scaffold.of(context).showSnackBar(snackBar);
         },

