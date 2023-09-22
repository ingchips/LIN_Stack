# FAQ

---

1. lin驱动，目前收发包均为标准校验，如何修改为增强校验？
   * 设置peripherals_lin_0.c中的 lin0_InitConfig0 内的numOfClassicPID为0U，且classicPID保持为NULL，则所有包均采用增强型校验了；
2. 硬件物理连接均正常，但是slave就是无法接收数据，该怎么办？
   * 我们的lin驱动只支持一个物理接口，所以instance必须为0，检查const l_u32 g_lin_virtual_ifc[LIN_NUM_OF_IFCS] = {0}; 这个初始化变量必须为0；
3.  SLAVE从机如何观测设备是否能够正常break信号？
   * 在 LIN_LPUART_DRV_ProcessBreakDetect 函数中 linEmitEvtToUpper(instance, linCurrentState, LIN_RECV_BREAK_FIELD_OK); 的下面加一个打印信息，就知道是否可以正常检测到break信号了，如果打印了，则说明可以收到，如果没有打印，则说明无法收到；
   * 无法收到break信号时，请检测硬件连线，一般就是硬件问题。
   * 如果确认不是硬件连线问题，则用逻辑分析仪抓取UART_RX引脚的break信号，看持续时间是否正常，如果持续时间太短，请确认串口波特率：LIN0_UART_BAUDRATE
   * 如果波特率正常，但是精度太差，导致break信号较短，可降低 LIN_SLAVE_DETECT_BREAK_LENGTH的值试一下；
4. SLAVE从机如何观测设备是否收到了其它信号？
   * 特别说明：添加日志会影响后续数据的接收，导致一帧数据接收失败；
   * 接收到SYNC成功：linEmitEvtToUpper(instance, linCurrentState, LIN_RECV_SYNC_FIELD_OK);
   * 接收SYNC失败：linEmitEvtToUpper(instance, linCurrentState, LIN_SYNC_ERROR);
   * 接收到PID正确：linEmitEvtToUpper(instance, linCurrentState, LIN_PID_OK);
   * 接收PID出错：linEmitEvtToUpper(instance, linCurrentState, LIN_PID_ERROR);
   * 接收到数据并校验成功：linEmitEvtToUpper(instance, linCurrentState, LIN_RX_COMPLETED);
   * 接收到数据并校验出错：linEmitEvtToUpper(instance, linCurrentState, LIN_CHECKSUM_ERROR);