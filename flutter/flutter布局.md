1. flutter 布局都被封装成了组件，比如：Row,Column,Margin,Padding,SizeBox,Container, Opacity(透明度)



   在 Flutter 中，几乎所有东西都是 widget —— 甚至布局模型都是 widgets，一个 Flutter app 本身就是一个 widget，大多数 widgets 都有一个 build() 方法，在 app 的 build() 方法中实例化和返回一个 widget 会让它显示出来

        class Table extends StatelessWidget{

            @override
            Widget build(BuildContext context){
                return Text('hello flutter')
            }
        }

   可以通过组合 widgets 来构建更复杂的 widgets 来创建布局

2. 布局组件

+ child: 只有一个子组件，例如center

+ children: 多个子组件

3. material UI库和 widgets 库

+ material UI

    https://api.flutter-io.cn/flutter/material/material-library.html

+ widgets UI库

  https://api.flutter-io.cn/flutter/widgets/widgets-library.html