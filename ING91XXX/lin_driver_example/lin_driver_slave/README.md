# lin_drv_slave

* 该文档采用markdown语法编写，请用相关工具打开增强阅读体验；
* 该文档介绍了lin驱动测试例程；
* 无lin stack协议栈，只进行物理层收发数据的测试；
* 主从通讯，且这是主设备slave的例程；


# 功能介绍
  * 与lin_drv_master主设备的功能相匹配；
  * 一帧数据包含帧头和数据。主节点可以发送帧头和数据，但是从节点只能发送数据。基于帧头消息的不同，主节点或从节点将会采取相对应的应答行为。
  * 如果从节点收到 FRAME_MASTER_RECEIVE_DATA 的帧头，从节点将会以发送（txBuff2）数据作为应答；
  * 如果从节点收到 FRAME_SLAVE_RECEIVE_DATA 的帧头，从节点将会接收并校验数据。如果数据校验成功，则从节点会亮绿灯，否则会亮红灯；

  * 从机按键2：
    * 无作用；
  * 从机按键3：
    * 在唤醒状态下，无作用；
    * 在休眠状态下，按下按键，则主节点和从节点均进入唤醒状态，RGB灯显示蓝灯；


# 如何使用这个例程
  * 请参考此仓库如下路径的README.md文档
    * /Projects_LZK/README.md 


# 本例程使用外设资源
  * 本例程为slave例程，使用如下资源：
    * 一个定时器APB_TMR1，定时器1，用于lin收发数据过程中的超时判断，以及纳秒时间的获取，目前有意义的功能只有超时判断，纳秒时间获取是为后续新功能开发使用的；
    * 一个串口UART1，用于配合串口中断进行lin数据通讯；
    * 一个RGB三色灯，用于指示通讯成功/失败；RGB灯的介绍详见下方 __关于RGB灯__
    * 每个外设对应的GPIO配置详见：lin_user_def.h文件
    * 调试接口，默认使用RTT，连接JLINK仿真器后即可使用，也可以切换为串口打印调试信息，需要修改代码，具体的操作，见下方的 __DEBUG调试__


# 本例程测试硬件
  * 本例程基于 ING91881B开发板 V2 ing02-02-05 测试通过；
  * 若采用其它硬件环境测试，需要进行驱动适配，主要进行如下修改：
    * 根据硬件，对lin通讯串口1的GPIO口配置，宏定义为：LIN1_UART_IO_TX 和 LIN1_UART_IO_RX ，详见lin_user_def.h文件；
    * 为LED灯的GPIO配置，这个根据选择的灯的类型不同，配置不同，如果是普通GPIO控制的灯，则需要增加对应的初始化代码以及调用的代码即可；根据set_rgb_led_color调用的地方进行相应替换即可；RGB灯的介绍详见下方 __关于RGB灯__


# 关于RGB灯
  * 本例程中的RGB灯是采用的 ING91881B开发板 V2 ing02-02-05 上的RGB灯，使用GPIO0，按照RGB灯的特定时序进行控制，相关代码见board.c，与RGB相关的代码如下：
    * 首先，引入了board.c文件；
    * 然后在工程的Option for Target设置中的C/C++(AC6)中的Define中增加如下两个宏定义：
      * BOARD_ID=BOARD_ING91881B_02_02_05, 
      * BOARD_USE_RGB_LED
    * 则可以使用 setup_rgb_led(); 进行初始化，并使用 set_rgb_led_color(r, g, b); 进行三色灯的控制了，其中r，g，b三个参数的值越大，对应的灯越亮，设为0则灭；


# DEBUG调试：
  ## 相关宏定义
    * #define LOG_BY_UART0
    * #define LOG_BY_RTT
    * 解开哪一个宏定义则使用哪一种方式打印信息，可同时通过两种方式打印。
  ## RTT调试：
    * 无需修改代码，连接jlink后，打开J-link RTT viewer工具，然后在弹出的configuration界面依次进行如下配置：
      * Connection to J-Link 选择：USB
      * Specify Target Device选择：ING9188XX 或者 CORTEX-M3 (如果是ING916X芯片则选择M4)
      * Target Interface & Speed 选择：SWD， 速率 4000 KHZ即可；
      * RTT Control Block 选择：Search Range ，然后下面填入：0x20007000 0x4000 ，这里是告诉上位机按照 0x20007000 ~ (0x20007000+0x4000) 的范围从代码中查找 _SEGGER_RTT 的位置，所以请确保你的代码编译后，_SEGGER_RTT在该范围内；从代码中查看 _SEGGER_RTT 的方法为：编译代码，然后双击工程中project栏里的Target 1文件夹所在位置，会自动打开map文件，然后搜索“_SEGGER_RTT          ”，注意_SEGGER_RTT后面有10个空格，这样可以确保搜索值唯一，之后就可以看到它的实际地址了。
    * 配置好点击OK即可，如果电脑上只插入了一个jlink，则直接进入主界面了；
    * 之后就会显示程序中打印的LOG日志了；
  ## 串口调试（默认）：
    * 串口调试需要修改代码，需要将 cb_putc 函数中的 SEGGER_RTT_Write(0,c,1); 代码屏蔽掉，然后用如下两行代码替换：
      * while (apUART_Check_TXFIFO_FULL(APB_UART0) == 1);
      * UART_SendData(APB_UART0, (uint8_t)*c);
    * 即通过串口0将printf/platform_printf产生的调试数据通过串口打印出来；
    * 串口0的初始化见：setup_peripherals 函数，默认波特率为 115200bps，UART0_TXD=GPIO2, UART0_RXD=GPIO3, 可根据具体硬件进行调整；
    * 这里需要特别注意一点儿：当串口0的波特率为921600bps时，使用ING91881B的开发板打印日志，会因为jlink虚拟串口速率不够快，导致打印日志概率性丢失问题，将串口0的波特率切换为115200bps时，则此问题消失，但由于速率下降，其延迟导致的程序延时则不容忽视。例如，当我们在调试lin驱动时，如果在串口中断中使用了printf，则会根据输出方式（RTT,UART0=921600,UART0=115200等）的不同，会产生不同程度的延迟，则可能造成lin时序与实际情况不符，所以最好不要这样用，此种场景，建议仿真调试；



