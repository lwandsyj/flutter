https://flutter.io/widgets/material

为了继承主题数据，widget需要位于MaterialApp内才能正常显示， 因此我们使用MaterialApp来运行该应用

1. MaterialApp 是一个根Widget ,也就是Flutter应用程序的第一个Widget, 根Widget 有以下几种

+ WidgetsApp： 如果需要自定义风格，可以使用WidgetsApp。

+ MaterialApp：Material Design风格的Widget。

+ CupertinoApp iOS风格的根Widget。

2. MaterialApp

要使用Material 风格的组件，必须要放到MaterialApp 中

> title : String 应用程序的名称，当使用手机任务管理器时，呈现的名称

> routes: Map<string,widgetBuilder> 命名路由配置

+ key 为路由名称

+ value 为要跳转的页面组件，使用Scaffold 作为根组件


        routes: <String, WidgetBuilder>{
            '/': (BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                    title: const Text('Home Route'),
                    ),
                );
            },
            '/about': (BuildContext context) {
                return Scaffold(
                    appBar: AppBar(
                    title: const Text('About Route'),
                    ),
                );
            }
        },

> initialRoute:String 初始路由，默认跳转页面

   ***initialRoute 与 home 冲突，最好不要一起定义***

        MaterialApp(
            initialRoute: '/'
        )

> home：widget 主页

   ***home 与 initialRoute 冲突***

        MaterialApp(
            home:Scaffold(
                appBar: AppBar(
                title: const Text('MaterialApp Theme'),
                )
        )