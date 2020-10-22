1. ScrollController间接继承自Listenable，我们可以根据ScrollController来监听滚动事件

2. 为了避免内存泄露，需要调用 controller.dispose

        ScrollController _controller=new ScrollController();
 
        @override
        void dispose() {
            _controller.dispose();
            super.dispose();
        }

3. 监听scroll

        @override
        void initState() {
            // TODO: implement initState
            super.initState();
            _controller.addListener((){
            print(_controller.offset);
            });
        }

4. 属性和方法

> 属性，获取当前滚动条的位置

+ offset

        _controller.offset

> 方法

+ jumpTo: 跳转到指定位置

+ animateTo: 跳转到指定的位置， 会有动画效果

+ dispose: 释放资源