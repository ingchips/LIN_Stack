# lin driver version

---
# v1.0.1
* 解决某些情况下break接收异常后，无法自行恢复的问题；
* ING918和ING916平台兼容SDK 8.3.4
* 修复ING916定时器驱动问题；
* 修复ING916无法接收wakeup信号的问题：即解决UART_RX无法同时作为串口接收与GPIO中断接收的问题；

---
# v1.0.0
* 初始版本