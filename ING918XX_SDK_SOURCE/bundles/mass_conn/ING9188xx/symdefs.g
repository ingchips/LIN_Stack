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
gap_add_dev_to_periodic_list = 0x00007481;
gap_add_whitelist = 0x00007491;
gap_aes_encrypt = 0x0000749d;
gap_clear_white_lists = 0x000074e1;
gap_clr_adv_set = 0x000074ed;
gap_clr_periodic_adv_list = 0x000074f9;
gap_create_connection_cancel = 0x00007505;
gap_default_periodic_adv_sync_transfer_param = 0x00007511;
gap_disconnect = 0x00007529;
gap_disconnect_all = 0x00007555;
gap_ext_create_connection = 0x00007595;
gap_get_connection_parameter_range = 0x00007685;
gap_le_read_channel_map = 0x000076bd;
gap_periodic_adv_create_sync = 0x00007729;
gap_periodic_adv_create_sync_cancel = 0x0000774d;
gap_periodic_adv_set_info_transfer = 0x00007759;
gap_periodic_adv_sync_transfer = 0x00007769;
gap_periodic_adv_sync_transfer_param = 0x00007779;
gap_periodic_adv_term_sync = 0x00007795;
gap_read_antenna_info = 0x0000781d;
gap_read_periodic_adv_list_size = 0x00007829;
gap_read_phy = 0x00007835;
gap_read_remote_used_features = 0x00007841;
gap_read_remote_version = 0x0000784d;
gap_read_rssi = 0x00007859;
gap_remove_whitelist = 0x00007865;
gap_rmv_adv_set = 0x000078e1;
gap_rmv_dev_from_periodic_list = 0x000078ed;
gap_rx_test_v2 = 0x000078fd;
gap_rx_test_v3 = 0x0000790d;
gap_set_adv_set_random_addr = 0x00007959;
gap_set_connection_cte_request_enable = 0x000079a5;
gap_set_connection_cte_response_enable = 0x000079c1;
gap_set_connection_cte_rx_param = 0x000079d1;
gap_set_connection_cte_tx_param = 0x00007a2d;
gap_set_connection_parameter_range = 0x00007a81;
gap_set_connectionless_cte_tx_enable = 0x00007a9d;
gap_set_connectionless_cte_tx_param = 0x00007aad;
gap_set_connectionless_iq_sampling_enable = 0x00007b0d;
gap_set_data_length = 0x00007b71;
gap_set_def_phy = 0x00007b89;
gap_set_ext_adv_data = 0x00007b99;
gap_set_ext_adv_enable = 0x00007bb1;
gap_set_ext_adv_para = 0x00007c2d;
gap_set_ext_scan_enable = 0x00007d05;
gap_set_ext_scan_para = 0x00007d1d;
gap_set_ext_scan_response_data = 0x00007dc5;
gap_set_host_channel_classification = 0x00007ddd;
gap_set_periodic_adv_data = 0x00007ded;
gap_set_periodic_adv_enable = 0x00007e5d;
gap_set_periodic_adv_para = 0x00007e6d;
gap_set_periodic_adv_rx_enable = 0x00007e85;
gap_set_phy = 0x00007e95;
gap_set_random_device_address = 0x00007eb1;
gap_start_ccm = 0x00007ee1;
gap_test_end = 0x00007f35;
gap_tx_test_v2 = 0x00007f41;
gap_tx_test_v4 = 0x00007f59;
gap_update_connection_parameters = 0x00007f7d;
gap_vendor_tx_continuous_wave = 0x00007fc1;
gatt_client_cancel_write = 0x000084e9;
gatt_client_discover_characteristic_descriptors = 0x0000850f;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x0000854f;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x0000859f;
gatt_client_discover_characteristics_for_service = 0x000085ef;
gatt_client_discover_primary_services = 0x00008625;
gatt_client_discover_primary_services_by_uuid128 = 0x00008657;
gatt_client_discover_primary_services_by_uuid16 = 0x0000869b;
gatt_client_execute_write = 0x000086d7;
gatt_client_find_included_services_for_service = 0x000086fd;
gatt_client_get_mtu = 0x0000872b;
gatt_client_is_ready = 0x000087cd;
gatt_client_listen_for_characteristic_value_updates = 0x000087e3;
gatt_client_prepare_write = 0x00008805;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x00008841;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x0000886b;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008871;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x0000889f;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x000088a5;
gatt_client_read_multiple_characteristic_values = 0x000088d3;
gatt_client_read_value_of_characteristic_using_value_handle = 0x00008903;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x00008931;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x0000897d;
gatt_client_register_handler = 0x000089c9;
gatt_client_reliable_write_long_value_of_characteristic = 0x000089d5;
gatt_client_signed_write_without_response = 0x00008e05;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008ec9;
gatt_client_write_client_characteristic_configuration = 0x00008f03;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008f55;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008f65;
gatt_client_write_long_value_of_characteristic = 0x00008fa1;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008fb1;
gatt_client_write_value_of_characteristic = 0x00008fed;
gatt_client_write_value_of_characteristic_without_response = 0x00009023;
hci_add_event_handler = 0x0000a565;
hci_power_control = 0x0000ad01;
hci_register_acl_packet_handler = 0x0000aeb5;
kv_commit = 0x0000b495;
kv_get = 0x0000b4ed;
kv_init = 0x0000b505;
kv_put = 0x0000b56d;
kv_remove = 0x0000b5e5;
kv_remove_all = 0x0000b621;
kv_value_modified = 0x0000b665;
kv_visit = 0x0000b669;
l2cap_add_event_handler = 0x0000b71d;
l2cap_can_send_packet_now = 0x0000b72d;
l2cap_create_le_credit_based_connection_request = 0x0000b8e9;
l2cap_credit_based_send = 0x0000ba2d;
l2cap_credit_based_send_continue = 0x0000ba59;
l2cap_disconnect = 0x0000bad5;
l2cap_get_le_credit_based_connection_credits = 0x0000bd25;
l2cap_get_peer_mtu_for_local_cid = 0x0000bd41;
l2cap_init = 0x0000c115;
l2cap_le_send_flow_control_credit = 0x0000c20b;
l2cap_max_le_mtu = 0x0000c515;
l2cap_register_packet_handler = 0x0000c63d;
l2cap_register_service = 0x0000c649;
l2cap_request_can_send_now_event = 0x0000c759;
l2cap_request_connection_parameter_update = 0x0000c773;
l2cap_send_echo_request = 0x0000cc45;
l2cap_unregister_service = 0x0000cd05;
le_device_db_add = 0x0000cd5d;
le_device_db_find = 0x0000ce31;
le_device_db_from_key = 0x0000ce5d;
le_device_db_iter_cur = 0x0000ce65;
le_device_db_iter_cur_key = 0x0000ce69;
le_device_db_iter_init = 0x0000ce6d;
le_device_db_iter_next = 0x0000ce75;
le_device_db_remove_key = 0x0000ce9b;
ll_aes_encrypt = 0x0000cec9;
ll_config = 0x0000cf45;
ll_free = 0x0000cf55;
ll_get_heap_free_size = 0x0000cf61;
ll_hint_on_ce_len = 0x0000cf71;
ll_legacy_adv_set_interval = 0x0000cfa9;
ll_malloc = 0x0000cfb9;
ll_query_timing_info = 0x0000d0f1;
ll_scan_set_fixed_channel = 0x0000d195;
ll_set_adv_access_address = 0x0000d38d;
ll_set_adv_coded_scheme = 0x0000d399;
ll_set_conn_coded_scheme = 0x0000d3c9;
ll_set_conn_latency = 0x0000d3f5;
ll_set_conn_tx_power = 0x0000d425;
ll_set_def_antenna = 0x0000d46d;
ll_set_initiating_coded_scheme = 0x0000d489;
ll_set_max_conn_number = 0x0000d495;
nibble_for_char = 0x0001e30d;
platform_32k_rc_auto_tune = 0x0001e3b9;
platform_32k_rc_tune = 0x0001e435;
platform_calibrate_32k = 0x0001e449;
platform_config = 0x0001e44d;
platform_enable_irq = 0x0001e575;
platform_get_current_task = 0x0001e5ad;
platform_get_gen_os_driver = 0x0001e5d1;
platform_get_heap_status = 0x0001e5d9;
platform_get_task_handle = 0x0001e5f1;
platform_get_us_time = 0x0001e611;
platform_get_version = 0x0001e615;
platform_hrng = 0x0001e61d;
platform_install_isr_stack = 0x0001e625;
platform_install_task_stack = 0x0001e631;
platform_patch_rf_init_data = 0x0001e669;
platform_printf = 0x0001e675;
platform_raise_assertion = 0x0001e689;
platform_rand = 0x0001e69d;
platform_read_info = 0x0001e6a1;
platform_read_persistent_reg = 0x0001e6d1;
platform_reset = 0x0001e6e1;
platform_set_evt_callback = 0x0001e705;
platform_set_evt_callback_table = 0x0001e719;
platform_set_irq_callback = 0x0001e725;
platform_set_irq_callback_table = 0x0001e741;
platform_set_rf_clk_source = 0x0001e74d;
platform_set_rf_init_data = 0x0001e759;
platform_set_rf_power_mapping = 0x0001e765;
platform_set_timer = 0x0001e771;
platform_shutdown = 0x0001e775;
platform_switch_app = 0x0001e779;
platform_trace_raw = 0x0001e7a5;
platform_write_persistent_reg = 0x0001e7bd;
printf_hexdump = 0x0001e971;
pvPortMalloc = 0x0001f461;
pvTaskIncrementMutexHeldCount = 0x0001f549;
pvTimerGetTimerID = 0x0001f561;
pxPortInitialiseStack = 0x0001f58d;
reverse_128 = 0x0001f76d;
reverse_24 = 0x0001f773;
reverse_48 = 0x0001f779;
reverse_56 = 0x0001f77f;
reverse_64 = 0x0001f785;
reverse_bd_addr = 0x0001f78b;
reverse_bytes = 0x0001f791;
sm_add_event_handler = 0x0001fa51;
sm_address_resolution_lookup = 0x0001fba9;
sm_authenticated = 0x0001ff09;
sm_authorization_decline = 0x0001ff17;
sm_authorization_grant = 0x0001ff37;
sm_authorization_state = 0x0001ff57;
sm_bonding_decline = 0x0001ff71;
sm_config = 0x00020391;
sm_config_conn = 0x000203a9;
sm_encryption_key_size = 0x0002055f;
sm_just_works_confirm = 0x00020a99;
sm_le_device_key = 0x00020dd5;
sm_passkey_input = 0x00020e6b;
sm_private_random_address_generation_get = 0x00021219;
sm_private_random_address_generation_get_mode = 0x00021221;
sm_private_random_address_generation_set_mode = 0x0002122d;
sm_private_random_address_generation_set_update_period = 0x00021255;
sm_register_oob_data_callback = 0x00021391;
sm_request_pairing = 0x0002139d;
sm_send_security_request = 0x00021dd7;
sm_set_accepted_stk_generation_methods = 0x00021dfd;
sm_set_authentication_requirements = 0x00021e09;
sm_set_encryption_key_size_range = 0x00021e15;
sscanf_bd_addr = 0x00022171;
sysSetPublicDeviceAddr = 0x00022525;
uuid128_to_str = 0x00022c99;
uuid_add_bluetooth_prefix = 0x00022cf1;
uuid_has_bluetooth_prefix = 0x00022d11;
uxListRemove = 0x00022d2d;
uxQueueMessagesWaiting = 0x00022d55;
uxQueueMessagesWaitingFromISR = 0x00022d7d;
uxQueueSpacesAvailable = 0x00022d99;
uxTaskGetStackHighWaterMark = 0x00022dc5;
uxTaskPriorityGet = 0x00022de5;
uxTaskPriorityGetFromISR = 0x00022e01;
vListInitialise = 0x00022ebb;
vListInitialiseItem = 0x00022ed1;
vListInsert = 0x00022ed7;
vListInsertEnd = 0x00022f07;
vPortEndScheduler = 0x00022f21;
vPortEnterCritical = 0x00022f4d;
vPortExitCritical = 0x00022f91;
vPortFree = 0x00022fc5;
vPortSuppressTicksAndSleep = 0x00023059;
vPortValidateInterruptPriority = 0x00023181;
vQueueDelete = 0x000231dd;
vQueueWaitForMessageRestricted = 0x00023209;
vTaskDelay = 0x00023251;
vTaskInternalSetTimeOutState = 0x0002329d;
vTaskMissedYield = 0x000232ad;
vTaskPlaceOnEventList = 0x000232b9;
vTaskPlaceOnEventListRestricted = 0x000232f1;
vTaskPriorityDisinheritAfterTimeout = 0x00023331;
vTaskPrioritySet = 0x000233dd;
vTaskResume = 0x000234a5;
vTaskStartScheduler = 0x00023529;
vTaskStepTick = 0x000235b9;
vTaskSuspend = 0x000235e9;
vTaskSuspendAll = 0x000236a5;
vTaskSwitchContext = 0x000236b5;
xPortStartScheduler = 0x0002375d;
xQueueAddToSet = 0x00023825;
xQueueCreateCountingSemaphore = 0x00023849;
xQueueCreateCountingSemaphoreStatic = 0x00023885;
xQueueCreateMutex = 0x000238c9;
xQueueCreateMutexStatic = 0x000238df;
xQueueCreateSet = 0x000238f9;
xQueueGenericCreate = 0x00023901;
xQueueGenericCreateStatic = 0x0002394d;
xQueueGenericReset = 0x000239b5;
xQueueGenericSend = 0x00023a41;
xQueueGenericSendFromISR = 0x00023bad;
xQueueGiveFromISR = 0x00023c6d;
xQueueGiveMutexRecursive = 0x00023d11;
xQueueIsQueueEmptyFromISR = 0x00023d51;
xQueueIsQueueFullFromISR = 0x00023d75;
xQueuePeek = 0x00023d9d;
xQueuePeekFromISR = 0x00023ec5;
xQueueReceive = 0x00023f31;
xQueueReceiveFromISR = 0x0002405d;
xQueueRemoveFromSet = 0x000240f1;
xQueueSelectFromSet = 0x00024113;
xQueueSelectFromSetFromISR = 0x00024125;
xQueueSemaphoreTake = 0x00024139;
xQueueTakeMutexRecursive = 0x000242a5;
xTaskCheckForTimeOut = 0x000242e9;
xTaskCreate = 0x00024359;
xTaskCreateStatic = 0x000243b5;
xTaskGetCurrentTaskHandle = 0x00024425;
xTaskGetSchedulerState = 0x00024431;
xTaskGetTickCount = 0x0002444d;
xTaskGetTickCountFromISR = 0x00024459;
xTaskIncrementTick = 0x00024469;
xTaskPriorityDisinherit = 0x00024535;
xTaskPriorityInherit = 0x000245c9;
xTaskRemoveFromEventList = 0x0002465d;
xTaskResumeAll = 0x000246dd;
xTaskResumeFromISR = 0x000247a5;
xTimerCreate = 0x00024831;
xTimerCreateStatic = 0x00024865;
xTimerCreateTimerTask = 0x0002489d;
xTimerGenericCommand = 0x00024909;
xTimerGetExpiryTime = 0x00024979;
xTimerGetTimerDaemonTaskHandle = 0x00024999;