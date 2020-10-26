1. ListView

ListView是最常用的可滚动组件之一，它可以沿一个方向线性排布所有子组件，并且它也支持基于Sliver的延迟构建模型

        ListView({
            ...  
            //可滚动widget公共参数
            Axis scrollDirection = Axis.vertical, // 滚动方向
            bool reverse = false,
            ScrollController controller,
            bool primary,
            ScrollPhysics physics,
            EdgeInsetsGeometry padding,

            //ListView各个构造函数的共同参数  
            double itemExtent,
            bool shrinkWrap = false,
            bool addAutomaticKeepAlives = true,
            bool addRepaintBoundaries = true,
            double cacheExtent,

            //子widget列表
            List<Widget> children = const <Widget>[],
        })

再次强调，可滚动组件通过一个List来作为其children属性时，只适用于子组件较少的情况，这是一个通用规律，并非ListView自己的特性，像GridView也是如此。

2. ListView.builder : 

ListView.builder适合列表项比较多（或者无限）的情况，因为只有当子组件真正显示的时候才会被创建，也就说通过该构造函数创建的ListView是支持基于Sliver的懒加载模型的

            ListView.builder({
                // ListView公共参数已省略  
                ...
                @required IndexedWidgetBuilder itemBuilder,
                int itemCount,
                ...
            })

+ itemBuilder：它是列表项的构建器，类型为IndexedWidgetBuilder，返回值为一个widget。当列表滚动到具体的index位置时，会调用该构建器构建列表项。
+ itemCount：列表项的数量，如果为null，则为无限列表。

3. 状态栏高度

        ... //省略无关代码
        SizedBox(
        //Material设计规范中状态栏、导航栏、ListTile高度分别为24、56、56 
        height: MediaQuery.of(context).size.height-24-56-56,
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
        }),
        )

4. 固定头部

        @override
        Widget build(BuildContext context) {
            return Column(children: <Widget>[
                ListTile(title:Text("商品列表")),
                ListView.builder(itemBuilder: (BuildContext context, int index) {
                    return ListTile(title: Text("$index"));
                }),
            ]);
        }

5. ListView.separated

ListView.separated可以在生成的列表项之间添加一个分割组件，它比ListView.builder多了一个separatorBuilder参数，该参数是一个分割组件生成器。