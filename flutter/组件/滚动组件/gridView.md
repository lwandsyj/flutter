1. GridView可以构建一个二维网格列表，其默认构造函数定义如下：


        GridView({
            Axis scrollDirection = Axis.vertical,
            bool reverse = false,
            ScrollController controller,
            bool primary,
            ScrollPhysics physics,
            bool shrinkWrap = false,
            EdgeInsetsGeometry padding,
            @required SliverGridDelegate gridDelegate, //控制子widget layout的委托
            bool addAutomaticKeepAlives = true,
            bool addRepaintBoundaries = true,
            double cacheExtent,
            List<Widget> children = const <Widget>[],
        })

>gridDelegate

gridDelegate参数，类型是SliverGridDelegate，它的作用是控制GridView子组件如何排列(layout)。

SliverGridDelegate是一个抽象类，定义了GridView Layout相关接口，子类需要通过实现它们来实现具体的布局算法。Flutter中提供了两个SliverGridDelegate的子类SliverGridDelegateWithFixedCrossAxisCount和SliverGridDelegateWithMaxCrossAxisExtent

2. SliverGridDelegateWithFixedCrossAxisCount

        SliverGridDelegateWithFixedCrossAxisCount({
        @required double crossAxisCount, 
        double mainAxisSpacing = 0.0,
        double crossAxisSpacing = 0.0,
        double childAspectRatio = 1.0,
        })

+ crossAxisCount: 横轴子元素的数量。此属性值确定后子元素在横轴的长度就确定了，即ViewPort横轴长度除以crossAxisCount的商。

+ mainAxisSpacing: 主轴方向的间距。

+ crossAxisSpacing：横轴方向子元素的间距。

+ childAspectRatio：子元素在横轴长度和主轴长度的比例。由于crossAxisCount指定后，子元素横轴长度就确定了，然后通过此参数值就可以确定子元素在主轴的长度。

3. gridView.count

gridView.count构造函数内部使用了SliverGridDelegateWithFixedCrossAxisCount，我们通过它可以快速的创建横轴固定数量子元素的GridView

4. gridView 位于column 时，报错解决方案

                Expanded( // 尽可能大的展示子组件
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
                      shrinkWrap: true, // Creates a scrollable, 2D array of widgets with a fixed number of tiles in the cross axis.
                    )
                  ],
                ),
              )
  
5. GridView 用法

![avartar](../../../assets/gridView.jpg)

> childAspectRatio: 子元素宽高比

+ AspectRatio首先会在布局限制条件允许的范围内尽可能的扩展，widget的高度是由宽度和比率决定的，类似于BoxFit中的contain，按照固定比率去尽量占满区域。
+ 如果在满足所有限制条件过后无法找到一个可行的尺寸，AspectRatio最终将会去优先适应布局限制条件，而忽略所设置的比率。



+ childAspectRatio: 0.75,

![avartar](../../../assets/75ratio.jpg)

+ childAspectRatio: 1.0, 默认为1.0

![avartar](../../../assets/1ratio.jpg)
