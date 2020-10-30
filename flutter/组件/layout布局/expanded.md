1. Expanded 自动填充剩余空间，常用于Row 和 Column 布局中。

        const Expanded({
            int flex = 1, 
            @required Widget child,
        })

flex参数为弹性系数，如果为0或null，则child是没有弹性的，即不会被扩伸占用的空间。如果大于0，所有的Expanded按照其flex的比例来分割主轴的全部空闲空间

2. 有些组件需要确定父组件的大小，比如TextField 等

3. Expanded 只能作为Row,column 等flex 的子组件，决定剩余空间怎么存放，

+ flex: 剩余空间

+ child: 子组件