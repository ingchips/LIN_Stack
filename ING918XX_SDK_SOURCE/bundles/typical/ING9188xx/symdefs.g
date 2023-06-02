att_dispatch_client_can_send_now = 0x00005875;
att_dispatch_client_request_can_send_now_event = 0x0000587b;
att_dispatch_register_client = 0x00005881;
att_dispatch_register_server = 0x00005895;
att_dispatch_server_can_send_now = 0x000058a9;
att_dispatch_server_request_can_send_now_event = 0x000058af;
att_emit_general_event = 0x00005961;
att_server_can_send_packet_now = 0x00006075;
att_server_deferred_read_response = 0x00006079;
att_server_get_mtu = 0x00006091;
att_server_indicate = 0x00006109;
att_server_init = 0x0000618d;
att_server_notify = 0x000061c9;
att_server_register_packet_handler = 0x000062e1;
att_server_request_can_send_now_event = 0x000062ed;
att_set_db = 0x00006309;
att_set_read_callback = 0x0000631d;
att_set_write_callback = 0x00006329;
bd_addr_cmp = 0x00006499;
bd_addr_copy = 0x0000649f;
bd_addr_to_str = 0x000064a9;
big_endian_read_16 = 0x000064e1;
big_endian_read_32 = 0x000064e9;
big_endian_store_16 = 0x000064fd;
big_endian_store_32 = 0x00006509;
btstack_config = 0x0000665d;
btstack_memory_pool_create = 0x0000679b;
btstack_memory_pool_free = 0x000067c5;
btstack_memory_pool_get = 0x00006825;
btstack_push_user_msg = 0x0000688d;
btstack_push_user_runnable = 0x00006899;
char_for_nibble = 0x00006b21;
eTaskConfirmSleepModeStatus = 0x00006ded;
gap_add_dev_to_periodic_list = 0x00007489;
gap_add_whitelist = 0x00007499;
gap_aes_encrypt = 0x000074a5;
gap_clear_white_lists = 0x000074e9;
gap_clr_adv_set = 0x000074f5;
gap_clr_periodic_adv_list = 0x00007501;
gap_create_connection_cancel = 0x0000750d;
gap_default_periodic_adv_sync_transfer_param = 0x00007519;
gap_disconnect = 0x00007531;
gap_disconnect_all = 0x0000755d;
gap_ext_create_connection = 0x0000759d;
gap_get_connection_parameter_range = 0x0000768d;
gap_le_read_channel_map = 0x000076c9;
gap_periodic_adv_create_sync = 0x00007735;
gap_periodic_adv_create_sync_cancel = 0x00007759;
gap_periodic_adv_set_info_transfer = 0x00007765;
gap_periodic_adv_sync_transfer = 0x00007775;
gap_periodic_adv_sync_transfer_param = 0x00007785;
gap_periodic_adv_term_sync = 0x000077a1;
gap_read_antenna_info = 0x00007829;
gap_read_periodic_adv_list_size = 0x00007835;
gap_read_phy = 0x00007841;
gap_read_remote_used_features = 0x0000784d;
gap_read_remote_version = 0x00007859;
gap_read_rssi = 0x00007865;
gap_remove_whitelist = 0x00007871;
gap_rmv_adv_set = 0x000078ed;
gap_rmv_dev_from_periodic_list = 0x000078f9;
gap_rx_test_v2 = 0x00007909;
gap_rx_test_v3 = 0x00007919;
gap_set_adv_set_random_addr = 0x00007965;
gap_set_connection_cte_request_enable = 0x000079ad;
gap_set_connection_cte_response_enable = 0x000079c9;
gap_set_connection_cte_rx_param = 0x000079d9;
gap_set_connection_cte_tx_param = 0x00007a35;
gap_set_connection_parameter_range = 0x00007a89;
gap_set_connectionless_cte_tx_enable = 0x00007aa1;
gap_set_connectionless_cte_tx_param = 0x00007ab1;
gap_set_connectionless_iq_sampling_enable = 0x00007b11;
gap_set_data_length = 0x00007b75;
gap_set_def_phy = 0x00007b8d;
gap_set_ext_adv_data = 0x00007b9d;
gap_set_ext_adv_enable = 0x00007bb5;
gap_set_ext_adv_para = 0x00007c31;
gap_set_ext_scan_enable = 0x00007d09;
gap_set_ext_scan_para = 0x00007d21;
gap_set_ext_scan_response_data = 0x00007dc9;
gap_set_host_channel_classification = 0x00007de1;
gap_set_periodic_adv_data = 0x00007df1;
gap_set_periodic_adv_enable = 0x00007e61;
gap_set_periodic_adv_para = 0x00007e71;
gap_set_periodic_adv_rx_enable = 0x00007e89;
gap_set_phy = 0x00007e99;
gap_set_random_device_address = 0x00007eb5;
gap_start_ccm = 0x00007ee5;
gap_test_end = 0x00007f39;
gap_tx_test_v2 = 0x00007f45;
gap_tx_test_v4 = 0x00007f5d;
gap_update_connection_parameters = 0x00007f81;
gap_vendor_tx_continuous_wave = 0x00007fc5;
gatt_client_cancel_write = 0x000084ed;
gatt_client_discover_characteristic_descriptors = 0x00008513;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x00008553;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x000085a3;
gatt_client_discover_characteristics_for_service = 0x000085f3;
gatt_client_discover_primary_services = 0x00008629;
gatt_client_discover_primary_services_by_uuid128 = 0x0000865b;
gatt_client_discover_primary_services_by_uuid16 = 0x0000869f;
gatt_client_execute_write = 0x000086db;
gatt_client_find_included_services_for_service = 0x00008701;
gatt_client_get_mtu = 0x0000872f;
gatt_client_is_ready = 0x000087d1;
gatt_client_listen_for_characteristic_value_updates = 0x000087e7;
gatt_client_prepare_write = 0x00008809;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008845;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x0000886f;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008875;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x000088a3;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x000088a9;
gatt_client_read_multiple_characteristic_values = 0x000088d7;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008907;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008935;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x00008981;
gatt_client_register_handler = 0x000089cd;
gatt_client_reliable_write_long_value_of_characteristic = 0x000089d9;
gatt_client_signed_write_without_response = 0x00008e09;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008ecd;
gatt_client_write_client_characteristic_configuration = 0x00008f07;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008f59;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008f69;
gatt_client_write_long_value_of_characteristic = 0x00008fa5;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008fb5;
gatt_client_write_value_of_characteristic = 0x00008ff1;
gatt_client_write_value_of_characteristic_without_response = 0x00009027;
hci_add_event_handler = 0x0000a569;
hci_power_control = 0x0000ad5d;
hci_register_acl_packet_handler = 0x0000af11;
kv_commit = 0x0000b485;
kv_get = 0x0000b4dd;
kv_init = 0x0000b4f5;
kv_put = 0x0000b55d;
kv_remove = 0x0000b5d5;
kv_remove_all = 0x0000b611;
kv_value_modified = 0x0000b655;
kv_visit = 0x0000b659;
l2cap_add_event_handler = 0x0000b70d;
l2cap_can_send_packet_now = 0x0000b71d;
l2cap_create_le_credit_based_connection_request = 0x0000b8d9;
l2cap_credit_based_send = 0x0000ba1d;
l2cap_credit_based_send_continue = 0x0000ba49;
l2cap_disconnect = 0x0000bac5;
l2cap_get_le_credit_based_connection_credits = 0x0000bd15;
l2cap_get_peer_mtu_for_local_cid = 0x0000bd31;
l2cap_init = 0x0000c105;
l2cap_le_send_flow_control_credit = 0x0000c1fb;
l2cap_max_le_mtu = 0x0000c505;
l2cap_register_packet_handler = 0x0000c62d;
l2cap_register_service = 0x0000c639;
l2cap_request_can_send_now_event = 0x0000c749;
l2cap_request_connection_parameter_update = 0x0000c763;
l2cap_send_echo_request = 0x0000cc35;
l2cap_unregister_service = 0x0000ccf5;
le_device_db_add = 0x0000cd4d;
le_device_db_find = 0x0000ce21;
le_device_db_from_key = 0x0000ce4d;
le_device_db_iter_cur = 0x0000ce55;
le_device_db_iter_cur_key = 0x0000ce59;
le_device_db_iter_init = 0x0000ce5d;
le_device_db_iter_next = 0x0000ce65;
le_device_db_remove_key = 0x0000ce8b;
ll_aes_encrypt = 0x0000ceb9;
ll_config = 0x0000cf35;
ll_free = 0x0000cf45;
ll_get_heap_free_size = 0x0000cf51;
ll_hint_on_ce_len = 0x0000cf61;
ll_legacy_adv_set_interval = 0x0000cf99;
ll_malloc = 0x0000cfa9;
ll_query_timing_info = 0x0000d0e1;
ll_scan_set_fixed_channel = 0x0000d185;
ll_set_adv_access_address = 0x0000d37d;
ll_set_adv_coded_scheme = 0x0000d389;
ll_set_conn_coded_scheme = 0x0000d3b9;
ll_set_conn_latency = 0x0000d3e5;
ll_set_conn_tx_power = 0x0000d415;
ll_set_def_antenna = 0x0000d45d;
ll_set_initiating_coded_scheme = 0x0000d479;
ll_set_max_conn_number = 0x0000d485;
nibble_for_char = 0x0001e2e5;
platform_32k_rc_auto_tune = 0x0001e391;
platform_32k_rc_tune = 0x0001e40d;
platform_calibrate_32k = 0x0001e421;
platform_config = 0x0001e425;
platform_enable_irq = 0x0001e54d;
platform_get_current_task = 0x0001e585;
platform_get_gen_os_driver = 0x0001e5a9;
platform_get_heap_status = 0x0001e5b1;
platform_get_task_handle = 0x0001e5c9;
platform_get_us_time = 0x0001e5e9;
platform_get_version = 0x0001e5ed;
platform_hrng = 0x0001e5f5;
platform_install_isr_stack = 0x0001e5fd;
platform_install_task_stack = 0x0001e609;
platform_patch_rf_init_data = 0x0001e641;
platform_printf = 0x0001e64d;
platform_raise_assertion = 0x0001e661;
platform_rand = 0x0001e675;
platform_read_info = 0x0001e679;
platform_read_persistent_reg = 0x0001e6a9;
platform_reset = 0x0001e6b9;
platform_set_evt_callback = 0x0001e6dd;
platform_set_evt_callback_table = 0x0001e6f1;
platform_set_irq_callback = 0x0001e6fd;
platform_set_irq_callback_table = 0x0001e719;
platform_set_rf_clk_source = 0x0001e725;
platform_set_rf_init_data = 0x0001e731;
platform_set_rf_power_mapping = 0x0001e73d;
platform_set_timer = 0x0001e749;
platform_shutdown = 0x0001e74d;
platform_switch_app = 0x0001e751;
platform_trace_raw = 0x0001e77d;
platform_write_persistent_reg = 0x0001e795;
printf_hexdump = 0x0001e949;
pvPortMalloc = 0x0001f439;
pvTaskIncrementMutexHeldCount = 0x0001f521;
pvTimerGetTimerID = 0x0001f539;
pxPortInitialiseStack = 0x0001f565;
reverse_128 = 0x0001f745;
reverse_24 = 0x0001f74b;
reverse_48 = 0x0001f751;
reverse_56 = 0x0001f757;
reverse_64 = 0x0001f75d;
reverse_bd_addr = 0x0001f763;
reverse_bytes = 0x0001f769;
sm_add_event_handler = 0x0001fa29;
sm_address_resolution_lookup = 0x0001fb81;
sm_authenticated = 0x0001fee1;
sm_authorization_decline = 0x0001feef;
sm_authorization_grant = 0x0001ff0f;
sm_authorization_state = 0x0001ff2f;
sm_bonding_decline = 0x0001ff49;
sm_config = 0x00020369;
sm_config_conn = 0x00020381;
sm_encryption_key_size = 0x00020537;
sm_just_works_confirm = 0x00020a71;
sm_le_device_key = 0x00020dad;
sm_passkey_input = 0x00020e43;
sm_private_random_address_generation_get = 0x000211f1;
sm_private_random_address_generation_get_mode = 0x000211f9;
sm_private_random_address_generation_set_mode = 0x00021205;
sm_private_random_address_generation_set_update_period = 0x0002122d;
sm_register_oob_data_callback = 0x00021369;
sm_request_pairing = 0x00021375;
sm_send_security_request = 0x00021daf;
sm_set_accepted_stk_generation_methods = 0x00021dd5;
sm_set_authentication_requirements = 0x00021de1;
sm_set_encryption_key_size_range = 0x00021ded;
sscanf_bd_addr = 0x00022149;
sysSetPublicDeviceAddr = 0x000224fd;
uuid128_to_str = 0x00022c71;
uuid_add_bluetooth_prefix = 0x00022cc9;
uuid_has_bluetooth_prefix = 0x00022ce9;
uxListRemove = 0x00022d05;
uxQueueMessagesWaiting = 0x00022d2d;
uxQueueMessagesWaitingFromISR = 0x00022d55;
uxQueueSpacesAvailable = 0x00022d71;
uxTaskGetStackHighWaterMark = 0x00022d9d;
uxTaskPriorityGet = 0x00022dbd;
uxTaskPriorityGetFromISR = 0x00022dd9;
vListInitialise = 0x00022e93;
vListInitialiseItem = 0x00022ea9;
vListInsert = 0x00022eaf;
vListInsertEnd = 0x00022edf;
vPortEndScheduler = 0x00022ef9;
vPortEnterCritical = 0x00022f25;
vPortExitCritical = 0x00022f69;
vPortFree = 0x00022f9d;
vPortSuppressTicksAndSleep = 0x00023031;
vPortValidateInterruptPriority = 0x00023159;
vQueueDelete = 0x000231b5;
vQueueWaitForMessageRestricted = 0x000231e1;
vTaskDelay = 0x00023229;
vTaskInternalSetTimeOutState = 0x00023275;
vTaskMissedYield = 0x00023285;
vTaskPlaceOnEventList = 0x00023291;
vTaskPlaceOnEventListRestricted = 0x000232c9;
vTaskPriorityDisinheritAfterTimeout = 0x00023309;
vTaskPrioritySet = 0x000233b5;
vTaskResume = 0x0002347d;
vTaskStartScheduler = 0x00023501;
vTaskStepTick = 0x00023591;
vTaskSuspend = 0x000235c1;
vTaskSuspendAll = 0x0002367d;
vTaskSwitchContext = 0x0002368d;
xPortStartScheduler = 0x00023735;
xQueueAddToSet = 0x000237fd;
xQueueCreateCountingSemaphore = 0x00023821;
xQueueCreateCountingSemaphoreStatic = 0x0002385d;
xQueueCreateMutex = 0x000238a1;
xQueueCreateMutexStatic = 0x000238b7;
xQueueCreateSet = 0x000238d1;
xQueueGenericCreate = 0x000238d9;
xQueueGenericCreateStatic = 0x00023925;
xQueueGenericReset = 0x0002398d;
xQueueGenericSend = 0x00023a19;
xQueueGenericSendFromISR = 0x00023b85;
xQueueGiveFromISR = 0x00023c45;
xQueueGiveMutexRecursive = 0x00023ce9;
xQueueIsQueueEmptyFromISR = 0x00023d29;
xQueueIsQueueFullFromISR = 0x00023d4d;
xQueuePeek = 0x00023d75;
xQueuePeekFromISR = 0x00023e9d;
xQueueReceive = 0x00023f09;
xQueueReceiveFromISR = 0x00024035;
xQueueRemoveFromSet = 0x000240c9;
xQueueSelectFromSet = 0x000240eb;
xQueueSelectFromSetFromISR = 0x000240fd;
xQueueSemaphoreTake = 0x00024111;
xQueueTakeMutexRecursive = 0x0002427d;
xTaskCheckForTimeOut = 0x000242c1;
xTaskCreate = 0x00024331;
xTaskCreateStatic = 0x0002438d;
xTaskGetCurrentTaskHandle = 0x000243fd;
xTaskGetSchedulerState = 0x00024409;
xTaskGetTickCount = 0x00024425;
xTaskGetTickCountFromISR = 0x00024431;
xTaskIncrementTick = 0x00024441;
xTaskPriorityDisinherit = 0x0002450d;
xTaskPriorityInherit = 0x000245a1;
xTaskRemoveFromEventList = 0x00024635;
xTaskResumeAll = 0x000246b5;
xTaskResumeFromISR = 0x0002477d;
xTimerCreate = 0x00024809;
xTimerCreateStatic = 0x0002483d;
xTimerCreateTimerTask = 0x00024875;
xTimerGenericCommand = 0x000248e1;
xTimerGetExpiryTime = 0x00024951;
xTimerGetTimerDaemonTaskHandle = 0x00024971;