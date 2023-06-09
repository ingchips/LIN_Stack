att_dispatch_client_can_send_now = 0x0000586d;
att_dispatch_client_request_can_send_now_event = 0x00005873;
att_dispatch_register_client = 0x00005879;
att_dispatch_register_server = 0x0000588d;
att_dispatch_server_can_send_now = 0x000058a1;
att_dispatch_server_request_can_send_now_event = 0x000058a7;
att_emit_general_event = 0x00005959;
att_server_can_send_packet_now = 0x00006069;
att_server_deferred_read_response = 0x0000606d;
att_server_get_mtu = 0x00006085;
att_server_indicate = 0x000060f1;
att_server_init = 0x00006175;
att_server_notify = 0x000061b1;
att_server_register_packet_handler = 0x000062c9;
att_server_request_can_send_now_event = 0x000062d5;
att_set_db = 0x000062f1;
att_set_read_callback = 0x00006305;
att_set_write_callback = 0x00006311;
bd_addr_cmp = 0x00006481;
bd_addr_copy = 0x00006487;
bd_addr_to_str = 0x00006491;
big_endian_read_16 = 0x000064c9;
big_endian_read_32 = 0x000064d1;
big_endian_store_16 = 0x000064e5;
big_endian_store_32 = 0x000064f1;
btstack_config = 0x00006645;
btstack_memory_pool_create = 0x00006783;
btstack_memory_pool_free = 0x000067ad;
btstack_memory_pool_get = 0x0000680d;
btstack_push_user_msg = 0x00006875;
btstack_push_user_runnable = 0x00006881;
char_for_nibble = 0x00006b09;
eTaskConfirmSleepModeStatus = 0x00006dd1;
gap_add_dev_to_periodic_list = 0x0000746d;
gap_add_whitelist = 0x0000747d;
gap_aes_encrypt = 0x00007489;
gap_clear_white_lists = 0x000074cd;
gap_clr_adv_set = 0x000074d9;
gap_clr_periodic_adv_list = 0x000074e5;
gap_create_connection_cancel = 0x000074f1;
gap_default_periodic_adv_sync_transfer_param = 0x000074fd;
gap_disconnect = 0x00007515;
gap_disconnect_all = 0x00007541;
gap_ext_create_connection = 0x00007581;
gap_get_connection_parameter_range = 0x00007671;
gap_le_read_channel_map = 0x000076a9;
gap_periodic_adv_create_sync = 0x00007715;
gap_periodic_adv_create_sync_cancel = 0x00007739;
gap_periodic_adv_set_info_transfer = 0x00007745;
gap_periodic_adv_sync_transfer = 0x00007755;
gap_periodic_adv_sync_transfer_param = 0x00007765;
gap_periodic_adv_term_sync = 0x00007781;
gap_read_antenna_info = 0x00007809;
gap_read_periodic_adv_list_size = 0x00007815;
gap_read_phy = 0x00007821;
gap_read_remote_used_features = 0x0000782d;
gap_read_remote_version = 0x00007839;
gap_read_rssi = 0x00007845;
gap_remove_whitelist = 0x00007851;
gap_rmv_adv_set = 0x000078cd;
gap_rmv_dev_from_periodic_list = 0x000078d9;
gap_rx_test_v2 = 0x000078e9;
gap_rx_test_v3 = 0x000078f9;
gap_set_adv_set_random_addr = 0x00007945;
gap_set_connection_cte_request_enable = 0x0000798d;
gap_set_connection_cte_response_enable = 0x000079a9;
gap_set_connection_cte_rx_param = 0x000079b9;
gap_set_connection_cte_tx_param = 0x00007a15;
gap_set_connection_parameter_range = 0x00007a69;
gap_set_connectionless_cte_tx_enable = 0x00007a81;
gap_set_connectionless_cte_tx_param = 0x00007a91;
gap_set_connectionless_iq_sampling_enable = 0x00007af1;
gap_set_data_length = 0x00007b55;
gap_set_def_phy = 0x00007b6d;
gap_set_ext_adv_data = 0x00007b7d;
gap_set_ext_adv_enable = 0x00007b95;
gap_set_ext_adv_para = 0x00007c11;
gap_set_ext_scan_enable = 0x00007ce9;
gap_set_ext_scan_para = 0x00007d01;
gap_set_ext_scan_response_data = 0x00007da9;
gap_set_host_channel_classification = 0x00007dc1;
gap_set_periodic_adv_data = 0x00007dd1;
gap_set_periodic_adv_enable = 0x00007e41;
gap_set_periodic_adv_para = 0x00007e51;
gap_set_periodic_adv_rx_enable = 0x00007e69;
gap_set_phy = 0x00007e79;
gap_set_random_device_address = 0x00007e95;
gap_start_ccm = 0x00007ec5;
gap_test_end = 0x00007f19;
gap_tx_test_v2 = 0x00007f25;
gap_tx_test_v4 = 0x00007f3d;
gap_update_connection_parameters = 0x00007f61;
gap_vendor_tx_continuous_wave = 0x00007fa1;
gatt_client_cancel_write = 0x000084c9;
gatt_client_discover_characteristic_descriptors = 0x000084ef;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x0000852f;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x0000857f;
gatt_client_discover_characteristics_for_service = 0x000085cf;
gatt_client_discover_primary_services = 0x00008605;
gatt_client_discover_primary_services_by_uuid128 = 0x00008637;
gatt_client_discover_primary_services_by_uuid16 = 0x0000867b;
gatt_client_execute_write = 0x000086b7;
gatt_client_find_included_services_for_service = 0x000086dd;
gatt_client_get_mtu = 0x0000870b;
gatt_client_is_ready = 0x000087a9;
gatt_client_listen_for_characteristic_value_updates = 0x000087bf;
gatt_client_prepare_write = 0x000087df;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x0000881b;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x00008845;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x0000884b;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x00008879;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x0000887f;
gatt_client_read_multiple_characteristic_values = 0x000088ad;
gatt_client_read_value_of_characteristic_using_value_handle = 0x000088dd;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x0000890b;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x00008957;
gatt_client_register_handler = 0x000089a1;
gatt_client_reliable_write_long_value_of_characteristic = 0x000089ad;
gatt_client_signed_write_without_response = 0x00008db1;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008e75;
gatt_client_write_client_characteristic_configuration = 0x00008eaf;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008f01;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008f11;
gatt_client_write_long_value_of_characteristic = 0x00008f4d;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008f5d;
gatt_client_write_value_of_characteristic = 0x00008f99;
gatt_client_write_value_of_characteristic_without_response = 0x00008fcf;
hci_add_event_handler = 0x0000a505;
hci_power_control = 0x0000ace5;
hci_register_acl_packet_handler = 0x0000ae99;
kv_commit = 0x0000b401;
kv_get = 0x0000b459;
kv_init = 0x0000b471;
kv_put = 0x0000b4d5;
kv_remove = 0x0000b549;
kv_remove_all = 0x0000b585;
kv_value_modified = 0x0000b5c9;
kv_visit = 0x0000b5cd;
l2cap_add_event_handler = 0x0000b681;
l2cap_can_send_packet_now = 0x0000b691;
l2cap_create_le_credit_based_connection_request = 0x0000b84d;
l2cap_credit_based_send = 0x0000b991;
l2cap_credit_based_send_continue = 0x0000b9bd;
l2cap_disconnect = 0x0000ba39;
l2cap_get_le_credit_based_connection_credits = 0x0000bc89;
l2cap_get_peer_mtu_for_local_cid = 0x0000bca5;
l2cap_init = 0x0000c079;
l2cap_le_send_flow_control_credit = 0x0000c16f;
l2cap_max_le_mtu = 0x0000c479;
l2cap_register_packet_handler = 0x0000c5a1;
l2cap_register_service = 0x0000c5ad;
l2cap_request_can_send_now_event = 0x0000c6bd;
l2cap_request_connection_parameter_update = 0x0000c6d7;
l2cap_send_echo_request = 0x0000cba9;
l2cap_unregister_service = 0x0000cc69;
le_device_db_add = 0x0000ccc1;
le_device_db_find = 0x0000cd85;
le_device_db_from_key = 0x0000cdb1;
le_device_db_iter_cur = 0x0000cdb9;
le_device_db_iter_cur_key = 0x0000cdbd;
le_device_db_iter_init = 0x0000cdc1;
le_device_db_iter_next = 0x0000cdc9;
le_device_db_remove_key = 0x0000cdef;
ll_aes_encrypt = 0x0000ce1d;
ll_config = 0x0000ce99;
ll_free = 0x0000cea9;
ll_get_heap_free_size = 0x0000ceb5;
ll_hint_on_ce_len = 0x0000cec5;
ll_legacy_adv_set_interval = 0x0000cefd;
ll_malloc = 0x0000cf0d;
ll_query_timing_info = 0x0000d045;
ll_scan_set_fixed_channel = 0x0000d0e9;
ll_set_adv_access_address = 0x0000d2e1;
ll_set_adv_coded_scheme = 0x0000d2ed;
ll_set_conn_coded_scheme = 0x0000d315;
ll_set_conn_latency = 0x0000d33d;
ll_set_conn_tx_power = 0x0000d369;
ll_set_def_antenna = 0x0000d3ad;
ll_set_initiating_coded_scheme = 0x0000d3c9;
ll_set_max_conn_number = 0x0000d3d5;
nibble_for_char = 0x0001e115;
platform_32k_rc_auto_tune = 0x0001e1b5;
platform_32k_rc_tune = 0x0001e231;
platform_calibrate_32k = 0x0001e245;
platform_config = 0x0001e249;
platform_enable_irq = 0x0001e371;
platform_get_current_task = 0x0001e3a9;
platform_get_gen_os_driver = 0x0001e3cd;
platform_get_heap_status = 0x0001e3d5;
platform_get_task_handle = 0x0001e3ed;
platform_get_us_time = 0x0001e40d;
platform_get_version = 0x0001e411;
platform_hrng = 0x0001e419;
platform_install_isr_stack = 0x0001e421;
platform_install_task_stack = 0x0001e42d;
platform_patch_rf_init_data = 0x0001e465;
platform_printf = 0x0001e471;
platform_raise_assertion = 0x0001e485;
platform_rand = 0x0001e499;
platform_read_info = 0x0001e49d;
platform_read_persistent_reg = 0x0001e4cd;
platform_reset = 0x0001e4dd;
platform_set_evt_callback = 0x0001e501;
platform_set_evt_callback_table = 0x0001e515;
platform_set_irq_callback = 0x0001e521;
platform_set_irq_callback_table = 0x0001e53d;
platform_set_rf_clk_source = 0x0001e549;
platform_set_rf_init_data = 0x0001e555;
platform_set_rf_power_mapping = 0x0001e561;
platform_set_timer = 0x0001e56d;
platform_shutdown = 0x0001e571;
platform_switch_app = 0x0001e575;
platform_trace_raw = 0x0001e5a1;
platform_write_persistent_reg = 0x0001e5b9;
printf_hexdump = 0x0001e76d;
pvPortMalloc = 0x0001f255;
pvTaskIncrementMutexHeldCount = 0x0001f33d;
pvTimerGetTimerID = 0x0001f355;
pxPortInitialiseStack = 0x0001f381;
reverse_128 = 0x0001f561;
reverse_24 = 0x0001f567;
reverse_48 = 0x0001f56d;
reverse_56 = 0x0001f573;
reverse_64 = 0x0001f579;
reverse_bd_addr = 0x0001f57f;
reverse_bytes = 0x0001f585;
sm_add_event_handler = 0x0001f845;
sm_address_resolution_lookup = 0x0001f99d;
sm_authenticated = 0x0001fcfd;
sm_authorization_decline = 0x0001fd0b;
sm_authorization_grant = 0x0001fd2b;
sm_authorization_state = 0x0001fd4b;
sm_bonding_decline = 0x0001fd65;
sm_config = 0x00020185;
sm_config_conn = 0x0002019d;
sm_encryption_key_size = 0x00020353;
sm_just_works_confirm = 0x0002088d;
sm_le_device_key = 0x00020bc9;
sm_passkey_input = 0x00020c5f;
sm_private_random_address_generation_get = 0x0002100d;
sm_private_random_address_generation_get_mode = 0x00021015;
sm_private_random_address_generation_set_mode = 0x00021021;
sm_private_random_address_generation_set_update_period = 0x00021049;
sm_register_oob_data_callback = 0x00021185;
sm_request_pairing = 0x00021191;
sm_send_security_request = 0x00021bcb;
sm_set_accepted_stk_generation_methods = 0x00021bf1;
sm_set_authentication_requirements = 0x00021bfd;
sm_set_encryption_key_size_range = 0x00021c09;
sscanf_bd_addr = 0x00021f65;
sysSetPublicDeviceAddr = 0x00022319;
uuid128_to_str = 0x00022a8d;
uuid_add_bluetooth_prefix = 0x00022ae5;
uuid_has_bluetooth_prefix = 0x00022b05;
uxListRemove = 0x00022b21;
uxQueueMessagesWaiting = 0x00022b49;
uxQueueMessagesWaitingFromISR = 0x00022b71;
uxQueueSpacesAvailable = 0x00022b8d;
uxTaskGetStackHighWaterMark = 0x00022bb9;
uxTaskPriorityGet = 0x00022bd9;
uxTaskPriorityGetFromISR = 0x00022bf5;
vListInitialise = 0x00022caf;
vListInitialiseItem = 0x00022cc5;
vListInsert = 0x00022ccb;
vListInsertEnd = 0x00022cfb;
vPortEndScheduler = 0x00022d15;
vPortEnterCritical = 0x00022d41;
vPortExitCritical = 0x00022d85;
vPortFree = 0x00022db9;
vPortSuppressTicksAndSleep = 0x00022e4d;
vPortValidateInterruptPriority = 0x00022f75;
vQueueDelete = 0x00022fd1;
vQueueWaitForMessageRestricted = 0x00022ffd;
vTaskDelay = 0x00023045;
vTaskInternalSetTimeOutState = 0x00023091;
vTaskMissedYield = 0x000230a1;
vTaskPlaceOnEventList = 0x000230ad;
vTaskPlaceOnEventListRestricted = 0x000230e5;
vTaskPriorityDisinheritAfterTimeout = 0x00023125;
vTaskPrioritySet = 0x000231d1;
vTaskResume = 0x00023299;
vTaskStartScheduler = 0x0002331d;
vTaskStepTick = 0x000233ad;
vTaskSuspend = 0x000233dd;
vTaskSuspendAll = 0x00023499;
vTaskSwitchContext = 0x000234a9;
xPortStartScheduler = 0x0002354d;
xQueueAddToSet = 0x00023615;
xQueueCreateCountingSemaphore = 0x00023639;
xQueueCreateCountingSemaphoreStatic = 0x00023675;
xQueueCreateMutex = 0x000236b9;
xQueueCreateMutexStatic = 0x000236cf;
xQueueCreateSet = 0x000236e9;
xQueueGenericCreate = 0x000236f1;
xQueueGenericCreateStatic = 0x0002373d;
xQueueGenericReset = 0x000237a5;
xQueueGenericSend = 0x00023831;
xQueueGenericSendFromISR = 0x0002399d;
xQueueGiveFromISR = 0x00023a5d;
xQueueGiveMutexRecursive = 0x00023b01;
xQueueIsQueueEmptyFromISR = 0x00023b41;
xQueueIsQueueFullFromISR = 0x00023b65;
xQueuePeek = 0x00023b8d;
xQueuePeekFromISR = 0x00023cb5;
xQueueReceive = 0x00023d21;
xQueueReceiveFromISR = 0x00023e4d;
xQueueRemoveFromSet = 0x00023ee1;
xQueueSelectFromSet = 0x00023f03;
xQueueSelectFromSetFromISR = 0x00023f15;
xQueueSemaphoreTake = 0x00023f29;
xQueueTakeMutexRecursive = 0x00024095;
xTaskCheckForTimeOut = 0x000240d9;
xTaskCreate = 0x00024149;
xTaskCreateStatic = 0x000241a5;
xTaskGetCurrentTaskHandle = 0x00024215;
xTaskGetSchedulerState = 0x00024221;
xTaskGetTickCount = 0x0002423d;
xTaskGetTickCountFromISR = 0x00024249;
xTaskIncrementTick = 0x00024259;
xTaskPriorityDisinherit = 0x00024325;
xTaskPriorityInherit = 0x000243b9;
xTaskRemoveFromEventList = 0x0002444d;
xTaskResumeAll = 0x000244cd;
xTaskResumeFromISR = 0x00024595;
xTimerCreate = 0x00024621;
xTimerCreateStatic = 0x00024655;
xTimerCreateTimerTask = 0x0002468d;
xTimerGenericCommand = 0x000246f9;
xTimerGetExpiryTime = 0x00024769;
xTimerGetTimerDaemonTaskHandle = 0x00024789;
