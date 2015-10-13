
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
    - onPause
      系统准备去启动或者恢复另一个活动的时候调用。
 - onStop
   在活动不可见时调用
   - onDestory
   活动被销毁之前调用，从活动栈中把活动移除
   - onRestart
   由停止状态变为运行状态之前调用
- 活动的启动模式
共有四种，standard, singleTop, singleTask, singleInstance，通过在AnroidManifest.xml中通过标签指定android:launchMode属性来选择启动模式。
	- standard
	  ActivityA----->activityA------>activityA
	- singleTop
	   使用singleTop模式可以很好地解决重复创建栈顶活动的问题，如果活动没有存于栈中则由系统来创建。
	  - ActivityA
	 - ActivityA->ActivityB->ActivityA->ActivityB
	- singleTask
          在活动栈中只存在活动的一个实例。当活动的启动模式为singleTask时，每次启动该活动时系统首先会在返回栈中检查是否存在该活动的实例，如果存在就使用此实例，并把在此实例之上的活动全部出栈(调用onDestroy).
   - singleInstance
   存在单独的返回栈管理活动，不管是哪个应用来访问这个活动，都共用同一个返回栈，也就解决了共享活动实例的问题。
   
> Written with [StackEdit](https://stackedit.io/).