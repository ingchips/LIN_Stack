# LIN_Stack

# 版权声明
  * 该仓库内的代码对所有用户开放；
  * 该仓库内的代码版权归INGCHIPS所有；
  * 该仓库内的代码不保证没有问题，请测试后使用；
  * 该仓库内的代码遵循MIT协议，详情见LICENSE，同时补充如下条款：
    * 此代码仅作为参考使用，如果任何组织或个人在使用此仓库的代码时造成了任意损失，不作为主张索赔权利的依据；
    * 如果不接受上面这一点儿，请不要使用该仓库的代码。
  * 此仓库代码由INGCHIPS员工进行维护；

# 项目介绍
  * 该仓库包含ING918X和ING916X开发板上的lin例程，文件夹说明：
  * lin_driver_example ： lin驱动测试的例程，或者叫物理层测试的例程；代码开源，源代码在src中；
    * lin_driver_master ： lin驱动的主节点例程，内含使用说明文档；
    * lin_driver_slave  ： lin驱动的从节点例程，内含使用说明文档；
  * lin_stack_example  ： lin协议栈测试例程，基于src中的驱动开发，其中驱动部分开源，协议栈部分以库的形式提供；
    * lin_stack_master ： lin协议栈的主节点例程，内含使用说明文档；
    * lin_stack_slave  ： lin协议栈的从节点例程，内含使用说明文档；
  * src ：提供了lin驱动部分的开源代码和lin协议栈使用的lib库，以及平台补充相关代码等：
    * lin_drv ： lin驱动源码；
    * lin_stack_lib ： lin协议栈库，以及头文件；
    * platform_supplement ： 平台补充代码；即与芯片平台相关，但是官方SDK不够全面的部分的代码；


# 功能介绍
  * 每个例程详细的功能介绍，请详细阅读对应例程下的readme.md文档；


# 如何使用该仓库的例程
  * 首先需要获得ingchips的官方sdk：
    * 获取地址：https://github.com/ingchips/ING918XX_SDK_SOURCE
    * 我目前使用的V8.3.4版本进行的验证，建议你使用最新版本；
    * 现在假设你已经下载好了SDK，且SDK名为：ING918XX_SDK_SOURCE，后续我会使用这个sdk文件夹名进行后续说明；

  * 然后，请使用ingWizard加载对应的SDK路径，查看和加载SDK路径的方法如下：
    * 【SDK已加载路径查看方法】：
      * 打开ingWizard工具
      * 找到Options小齿轮图标并点击
      * 在弹出框中找到SDK选项页并点击
      * 此时你可以通过SDK directory：查看到你的ingWizard加载的sdk的目录了；
        * 特别注意：虽然在此sdk路径的右侧有更改文件夹路径的按钮，但它是不起作用的，后续会讲如何更改路径。
    * 【SDK加载路径修改方法】：
      * 关闭ingWizard工具（修改路径，必须关闭工具）
      * 在桌面找到【INGChips SDK】的图标，并右单击；
      * 在弹出框中选择【打开文件所在的位置】，则会打开ingWizard.exe工具所在的文件夹，我的在默认安装路径：C:\Users\75684\AppData\Roaming\Local\Program\ING_SDK\wizard；
      * 然后在此文件夹内找到cfg文件夹并打开；
      * 然后在cfg文件夹内找到settings.json文件，用vscode等编辑工具打开它；
      * 在打开的settings.json文件的第4行为：
        * "sdk": "C:\/Users\/75684\/AppData\/Roaming\/Local\/Program\/ING_SDK\/sdk",
        * 其中 C:\/Users\/75684\/AppData\/Roaming\/Local\/Program\/ING_SDK\/sdk 就是ingWizard加载sdk的路径
        * 这里用到了路径转义，即用“\/”代替了“\”；【__用markdown查看器查看转义字符有问题，请切换为原文查看带转义的部分__】
        * windows下实际路径为：C:\Users\75684\AppData\Roaming\Local\Program\ING_SDK\sdk
        * 我们在变换sdk路径时也要注意添加转义。
        * 假设我们现在要将ingWizard加载sdk的路径修改为：D:\002-GITHUB\ING918XX_SDK_SOURCE
        * 则我们可以将settings.json的第4行改为：
        * "sdk": "D:\/002-GITHUB\/ING918XX_SDK_SOURCE",
        * 然后保存退出即可。
      * 再次打开ingWizard工具，通过上述【SDK已加载路径查看方法】再次查看，则发现路径已经变换成功了。

    * 变更了SDK路径，我们需要重新产生bundles文件（协议栈相关文件），产生方法如下：
      * 打开ingWizard工具
      * 点击工具栏里的Tools选项
      * 然后点击 Re-generate bundle files
      * 之后，会自动弹出一个dos窗口，等窗口自动消失，则此过程结束。
      * 之后，你就会发现你的sdk路径下的协议栈相关文件得到了更新（如果之前没有，则会新产生相关文件）：
        * 我们主要关注产生的如下路径的文件：
          * ING918X: D:\002-GITHUB\ING918XX_SDK_SOURCE\bundles\typical\ING9187xx
          * ING916X: D:\002-GITHUB\ING918XX_SDK_SOURCE\bundles\typical\ING9168xx
        * 这里的文件和协议栈相关，其中我们经常使用的是：
          * platform.bin 或 platform.hex ：协议栈程序，需要下载到芯片，可以用downloader工具下载platform.bin或用segger工具下载platform.hex；
          * symdefs.m ：协议栈内函数的入口地址列表文件，需要在应用程序工程中加载，则工程中可以通过相应.h文件调用协议栈内的函数；
      * 至此，bundles更新结束。

  * 然后需将此lin仓库的文件夹（LIN_Stack）与sdk的文件夹同级放置，例如：
    * 若sdk的目录为：
      * D:\002-GITHUB\ING918XX_SDK_SOURCE，
    * 则该仓库的目录应为：
      * D:\002-GITHUB\LIN_Stack
    * 它们都在D:\002-GITHUB这个路径下。
    * 放到同一级目录的原因如下：
      * LIN_Stack仓库里的所有工程都是以相对路径的方式引用ING918XX_SDK_SOURCE仓库里的内容，
      * 所以，如果未修改sdk的名称：ING918XX_SDK_SOURCE，且LIN_Stack文件夹与ING918XX_SDK_SOURCE并排放置了，工程编译时不会出错；
      * 否则，如果没有并排放置，或者修改了ING918XX_SDK_SOURCE的名称，则需要修改LIN_Stack文件夹下每个工程里的相对路径，主要包括以下：
        * KEIL工程中加载的部分C文件和symdefs.m会提示找不到文件，这部分源文件的引用路径需要修改；
        * 另外就是KEIL工程中的include paths里路径也需要修改，这部分主要是头文件的引用路径；
        * 一个简单的修改以上路径的方法是：通过vscode对相应工程文件.uvprojx和.uvoptx中包含的错误路径信息进行整体替换，这样修改快捷不易错；

  * 之后需打开每一个lin工程的地址信息进行配置，以使其与协议栈适配：
    * 共需要匹配四个参数： __起始IROM1地址__ 、__IROM1地址大小__、__起始IRAM1地址__、__IRAM1地址大小__ ，这里需要根据协议栈已使用量进行计算，这里我们使用ingWizard工具自动计算的值，获取方法如下：
      * 打开ingWizard（假设你已经按照以上操作，正确加载了sdk，并重新生成了bundles）；
      * 找到examples例程中的 __LLSync_Light__ 例程，进行fix操作：
        * 右单击工程
        * 在弹出菜单中选择 __check & fix ...__ 选项
        * 然后点击retry；
        * 点击OK；
      * 然后打开该例程：
        * 可右单击工程，选择 __open project...__ 打开
        * 也可直接点击 __LLSync Light__ 这几个深色字体打开
      * 然后通过 __Options for Target__ 可以看到IROM1和IRAM1的起始地址和大小，然后将这四个值填到lin各例程的对应位置即可；

  * 经过以上步骤的修改，工程就可以编译通过了。
  * 之后，我们就可以将程序下载到开发板测试了，需要下载协议栈platform.bin文件（起始地址0x4000）和应用生成的bin文件（起始地址0x26000）：
    * 我一般用downloader通过串口下载一次协议栈文件platform.bin文件和应用文件；
    * 之后，只要不更改协议栈，就不用再次下载协议栈了，后续只需用jlink通过keil工程为开发板更新应用程序以及仿真调试等；


# 关于硬件
  * 如果是ING918平台，至少需要两块开发板，这里我测试使用的开发板为ING91881B开发板 __V2 ing02-02-05__ ，这是底板和核心板一体的开发板，是早期使用的开发板；
  * 如果是ING916平台，至少需要两块开发板，这里测试使用的开发板为ING9168X开发板 __DB72C8K1A底板__ + __DB682CC1A核心板__ ，两个板子需要用杜邦线连接，而不是直接连接，因为要使用中间的引脚IO15；
  * 无论使用哪个平台的芯片，每个开发板要外扩一个lin转换器，我这里使用的为 __TJA1021转换板__ 芯片的转换板，至少要将此转换板的UART_RX，UART_TX，GND与开发板连接，同时转换板要进行12V供电，且我的转换板是自带12V转3.3V降压的，所以转换板的IO电平是3.3V的；关于开发板上使用的UART_RX，UART_TX的具体引脚值，ING918与ING916是不同的，需要参考例程里面的说明文档找到具体引脚值；
  * 特别说明：我这里使用开发板的目的是为了使用开发板上的RGB灯和按键等，如果客户有自己的板子，可自行修改软件适配，主要关心的是RGB灯、按键、串口引脚相关的移植；强烈建议先在我们的开发板上调通后再去客户自己的板子上使用，这样可以在遇到问题时有个对比，方便更快速的排查问题。
  * 适配其它硬件需要进行驱动适配：
    * __按键__: 为两个按键分配GPIO，宏定义为：USER_BUTTON_2 和 USER_BUTTON_3 ， 详见lin_user_def.h文件；
    * __串口__: lin通讯主要使用UART1，为其TX和RX分配GPIO，宏定义为：LIN1_UART_IO_TX 和 LIN1_UART_IO_RX ，详见lin_user_def.h文件；
    * __指示灯__: 根据选择灯类型不同，配置不同，最终将set_rgb_led_color调用的地方替换成自己的灯即可；


# 关于lin使用的外设资源
  * lin的驱动例程会用到一些外设资源，这里会介绍一下；
  * lin的协议栈例程是基于lin的驱动来实现的，所以，lin协议栈使用的外设资源和lin驱动使用的外设资源基本是一样的，所以这里就不做区分；
  * lin使用的外设资源与平台无关，在ING918和ING916上都是一样的，所以这里也不做区分；
  * lin的主节点使用的外设资源和lin的从节点使用的外设资源可能会因为功能不同而稍有不同，后续介绍；
  * lin使用的外设资源（不包含调试外设）：
    * 两个 __按键__ USER_BUTTON_2 和 USER_BUTTON_3 ，按键便于用户触发某些行为；根据例子类型和角色不同，功能不同，详情见例子功能说明；
    * 一个 __定时器__ APB_TMR1，定时器1，用于lin收发数据过程中的超时判断，以及纳秒时间的获取，目前有意义的功能只有超时判断，纳秒时间获取是为后续新功能开发使用的；
    * 一个 __串口__ UART1，用于配合串口中断进行lin数据通讯；其中UART1_RX引脚也作为普通GPIO，产生IO中断检测唤醒型号用；
    * 一个 __RGB三色灯__ ，用于指示通讯成功/失败；RGB灯的介绍详见下方：关于RGB灯；
    * 每个外设对应的GPIO配置详见：lin_user_def.h文件
  * 其它外设资源：
    * 一个 __调试串口__ ， UART0，用于打印调试信息；
    * 一个 __SWD接口__ ， 用于仿真和RTT打印调试信息；



# 关于RGB灯
  * lin的所有例程中均使用了RGB灯进行通讯指示，所以这里对RGB灯的使用进行汇总说明；
  * RGB灯，顾名思义就是红黄蓝三种颜色的灯，这里只是用这三种颜色的单色来使用的，没有进行混合使用；
  * 对于ING918和ING916，因为使用的开发板不同，所以某些配置不同，后续会分别介绍；
  * 桃芯平台使用RGB灯的基本软件步骤：
    * 首先，在工程中引入board.c文件；
    * 然后，在工程的Option for Target设置中的C/C++(AC6)中的Define中增加RGB宏定义：BOARD_USE_RGB_LED，另外，BOARD_ID要根据情况添加，后续分别介绍；
    * 最后，就可以在程序中使用RGB的相关函数了：
      * 首先，使用setup_rgb_led(); 进行初始化；
      * 然后，在程序中使用 set_rgb_led_color(r, g, b); 进行三色灯的控制即可，其中r，g，b三个参数的值越大，对应的灯越亮，设为0则灭；
  * 下面详细介绍不同开发板上RGB灯的个性化配置：
    * 对于ING918的开发板 V2 ing02-02-05，RGB灯的驱动芯片（位号U4）有两种，所以要自行核对一下芯片型号，不同型号的芯片，对应的BOARD_ID的宏定义的值不同，分别为：
      * WS2811芯片：BOARD_ID=BOARD_ING91881B_02_02_06
      * 59731芯片： BOARD_ID=BOARD_ING91881B_02_02_05
      * 我的开发板是用的59731的芯片，所以默认BOARD_ID=BOARD_ING91881B_02_02_05，如果你和我使用了一样的开发板，但是发现灯不亮，可修改BOARD_ID到另外一个值试一下；
    * 对于ING916的开发板 __DB72C8K1A__ 底板+ __DB682CC1A__ 核心板，BOARD_ID的宏定义如下：
      * BOARD_ID=BOARD_DB72C8K1A


# 关于DEBUG调试：
  * 这里讲述打印日志进行调试的两种手段，__串口调试__ 或 __RTT调试__ 。当然，某些场景下，用JLINK仿真调试更高效；
## 相关宏定义
  * #define LOG_BY_UART0
  * #define LOG_BY_RTT
  * 解开哪一个宏定义则使用哪一种方式打印信息，可同时通过两种方式打印。
## RTT调试：
  * 无需修改代码，连接jlink后，打开J-link RTT viewer工具，然后在弹出的configuration界面依次进行如下配置：
    * Connection to J-Link 选择：USB
    * Specify Target Device选择：ING9188XX 或者 CORTEX-M3 (如果是ING916X芯片则选择ING9168XX或M4)
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
