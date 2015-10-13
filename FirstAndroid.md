
第一行代码
==========


# Chapter2

- 显示Intent & 隐式Intent
- 每个Intent只能指定一个ACTION，但却可以指定多个Category.
- back stack， Android中的活动是可以层叠的
  Android是使用任务（TASK）来管理活动的，一个任务就是一组存放在stack里的活动的集合，这个stack也就是backstack.
- 活动的四种状态：
  - Running
	  当前活动处于栈顶
  - pause
       没有在栈顶，但对用户可见
  - stop
     不再处于栈顶，并且完全不可见。
  - destory
     活动从栈中移除
- 活动的生存周期
   Activity类中定义了七个回调方法
   - onCreate
     第一次创建时调用
   - onStart  
     由不可见变为可见时调用
    - onResume
      准备好与用户进行交互时调用，此时的活动一定位于返回栈的顶部，并且处于运行状态
     - 


> Written with [StackEdit](https://stackedit.io/).