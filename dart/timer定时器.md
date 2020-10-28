1. Timer 位于dart:async 中，要使用Timer ,要先引入dart:async

        import 'dart:async';

2. Timer 有两个构造函数，

>Timer(Duration duration,Funciton callback)

这种构造函数类似于setTimeout ,隔多长时间执行一次，只执行一次


     Timer(new Duration(seconds: 3), () {
      entry.remove();
     });
> Timer.periodic: 类似setInterVal,每隔多长时间执行一次，循环执行

    Timer.periodic(Duration(seconds: 1), (timer) {

      print(1);
    });
    // timer Timer 的实例，
  
   timer.cancel();// 取消定时器