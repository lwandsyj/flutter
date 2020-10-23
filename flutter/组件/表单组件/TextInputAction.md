1. textInputAction

textInputAction 文本需要做的什么动作，TextInputAction 是一个枚举类型。修改对应的值键盘右下角的图片按钮会做相应的改变

    none 默认 回车（换行，结合maxLines: 2,使用）
    unspecified 回车（换行，结合maxLines: 2,使用）
    newline 同上
    done 一个 v 的符号
    go 一个箭头
    search 搜索
    send 发送（一个短信图标）
    next 相当于键盘上的tab 切换下个输入框
    previous 与 next 相反
    iOS：下面这些值 源码说的 （Android does not have an IME input type of "emergencyCall."）
    
    continueAction 
    join
    route
    emergencyCall

