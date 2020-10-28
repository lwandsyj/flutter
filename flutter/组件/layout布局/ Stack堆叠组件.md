1. Stack 堆叠组件类似于css position:absolute 绝对定位

2. IndexedStack: IndexedStack是Stack的子类，Stack是将所有的子组件叠加显示，而IndexedStack只显示指定的子组件

        IndexedStack(
        index: _index,
        children: <Widget>[
            Center(
            child: Container(
                height: 300,
                width: 300,
                color: Colors.red,
                alignment: Alignment.center,
                child: Icon(
                Icons.fastfood,
                size: 60,
                color: Colors.blue,
                ),
            ),
            ),
            Center(
            child: Container(
                height: 300,
                width: 300,
                color: Colors.green,
                alignment: Alignment.center,
                child: Icon(
                Icons.cake,
                size: 60,
                color: Colors.blue,
                ),
            ),
            ),
            Center(
            child: Container(
                height: 300,
                width: 300,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: Icon(
                Icons.local_cafe,
                size: 60,
                color: Colors.blue,
                ),
            ),
            ),
        ],
        )


        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.fastfood),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.cake),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.local_cafe),
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
            ),
          ],
        )