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
  * 该仓库包含ING918X和ING916X开发板上的lin例程：
  * lin驱动例程：
    * lin_driver_master :lin driver 主设备例程代码，与下面从设备代码匹配使用，支持ING918和ING916两个平台；
    * lin_driver_slave  :lin driver 从设备例程代码，与上面主设备代码匹配使用，支持ING918和ING916两个平台；
  * lin协议栈例程：
    * lin_stack_master : lin协议栈主设备代码例程，与下面从设备代码例程匹配使用，支持ING918和ING916两个平台；
    * lin_stack_slave  : lin协议栈从设备代码例程，与上面主设备代码例程匹配使用，支持ING918和ING916两个平台；


# 功能介绍
  * 每个例程详细的功能介绍，请详细阅读每个例程下的readme.md文档；


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

