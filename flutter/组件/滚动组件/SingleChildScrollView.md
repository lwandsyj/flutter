1. SingleChildScrollView类似于Android中的ScrollView，它只能接收一个子组件

        SingleChildScrollView({
            this.scrollDirection = Axis.vertical, //滚动方向，默认是垂直方向
            this.reverse = false, 
            this.padding, 
            bool primary, 
            this.physics, 
            this.controller,
            this.child
        })

2. 定义滚动方向

         this.scrollDirection = Axis.vertical, //滚动方向，默认是垂直方向

          @override
            Widget build(BuildContext context) {
                var size = MediaQuery.of(context).size;
                return Scaffold(
                    appBar: AppBar(),
                    body: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,// 横向滚动
                    child: Row(
                        children: [
                        Container(
                            width: size.width,
                            height: 200,
                            color: Colors.yellow,
                        ),
                        Container(
                            width: size.width,
                            height: 200,
                            color: Colors.lightGreen,
                        ),
                        Container(
                            width: size.width,
                            height: 200,
                            color: Colors.lightBlue,
                        ),
                        ],
                    ),
                    ));
            }