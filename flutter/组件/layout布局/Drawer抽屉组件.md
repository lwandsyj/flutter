1. drawer 抽屉组件结合Scaffold 组件使用

        @override
        Widget build(BuildContext context){
            return Scaffold(
                body:Text('body'),
                drawer:Text('center'),// 左边drawer
                endDrawer: Text('center') // 右边drawer
            )
        }

> drawer: 左边抽屉

> endDrawer: 右边抽屉

2. 自定义按钮打开抽屉，按钮必须放到Builder 中

        Builder(bulider:(){
            return IconButton(icon:Icon(Icon.share,onPressed:(){
                Scaffold.of(context).openDrawer();
            }))
        });

3. 已编程方式关闭抽屉

        Navigator.pop(context);