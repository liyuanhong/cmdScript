@echo off

rem --------------使用说明：------------------------

rem  --------------使用说明：------------------------

rem 基础参数使用
rem  -p参数指定要测试的包名
rem  --throttle 每个事件之间的间隔事件，单位为毫秒
rem  -s 指定seed值，如果sed值相同，那么两次执行的随机事件也相同
rem  -v 指定日志级别，一共有3个日志级别0,1,2（-v ： 级别0；-v -v 级别1；-v -v -v 级别2）
rem   -v  默认选项 ，仅提供启动提示、测试完成和最终结果等少量信息
rem   -v -v 提供较为详细的日志，包括每个发送到Activity的事件信息
rem   -v -v -v最详细的日志，包括了测试中选中/未选中的Activity信息

rem 事件类型控制
rem --pct-touch <percent> 调整触摸事件的百分比  例如：adb shell monkey --pct-touch 100 -v 10   （这里设置的百分比为100%）
rem --pct-motion <percent> 调整motion事件百分比
rem --pct-trackball <percent> 调整滚动球事件百分比
rem --pct-nav <percent> 调整基本的导航事件百分比 （导航事件由方向输入设备的上下左右按键所触发的事件组成）
rem --pct-majornav <percent> （这些导航事件通常会导致UI界面中的动作事件，如5-way键盘的中间键，回退按键、菜单按键）
rem --pct-syskeys <percent> 调整系统事件百分比。（这些按键通常由系统保留使用，如Home、Back、Start Call、End Call、音量调节）
rem --pct-appswitch <percent> 调整Activity启动的百分比。（在随机的时间间隔中，Monkey将执行一个startActivity()调用，作为最大程度覆盖被测包中全部Activity的一种方法）
rem --pct-anyevent 调整其他事件的百分比。（这包含所有其他事件，如按键、其他在设备上不常用的按钮等）

rem 调试选项
rem --ignore-crashes 通常，应用发生崩溃或异常时Monkey会停止运行。如果设置此项，Monkey将继续发送事件给系统，直到事件计数完成。
rem --ignore-timeouts 通常，应用程序发生任何超时错误（如“Application Not responding”对话框）Monkey将停止运行，设置此项，Monkey将继续发送事件给系统，直到事件计数完成。
rem --ignore-security-exception  通常，当程序发生许可错误（例如启动一些需要许可的Activity）导致的异常时，Monkey将停止运行。设置此项，Monkey将继续发送事件给系统，直到事件计数完成。





rem ----------------执行monkey测试-------------------

rem powershell "adb shell monkey -p com.xxx.videoeditor --throttle 500 -s 68  -v -v 5000 | tee monkeyTest.log"
powershell "adb shell monkey --throttle 100 -s 68  -v -v -v 10000 | tee monkeyTest.log"

pause