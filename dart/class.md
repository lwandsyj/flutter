1. class 自定义类，没有public ,private,protected ，默认使用下划线(_) 表示私有

2. 构造函数， 如果没有提供构造函数，dart默认提供一个没有参数的构造函数。

> 在dart 中构造函数和js 的不一样，同java,C# 相同，使用和类名同样的名称

        class Test {
            String name; // 实例成员
            // 构造函数
            Test(name) {
                this.name = name;
            }
        }

        class Test2 {
            String name;
            // 构造函数，是上面的简写
            Test2(this.name);
        }

3. 实例化

实例化类，就是调用类的构造函数，是否携带参数，看类的构造函数定义。

使用new 实例构造函数

        Test a = new Test('zhangsan');

> 在dart 中 new 不是必须的，可以省略。是否使用看个人习惯

        Test a = Test('zhangsan');

        Test b = new Test('lisi');

4. 命名构造函数

        Person.anonymous() {}

