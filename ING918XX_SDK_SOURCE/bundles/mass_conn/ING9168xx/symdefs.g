att_dispatch_client_can_send_now = 0x02004449;
att_dispatch_client_request_can_send_now_event = 0x0200444f;
att_dispatch_register_client = 0x02004455;
att_dispatch_register_server = 0x02004469;
att_dispatch_server_can_send_now = 0x0200447d;
att_dispatch_server_request_can_send_now_event = 0x02004483;
att_emit_general_event = 0x02004535;
att_server_can_send_packet_now = 0x02004c51;
att_server_deferred_read_response = 0x02004c55;
att_server_get_mtu = 0x02004c6d;
att_server_indicate = 0x02004ce5;
att_server_init = 0x02004d69;
att_server_notify = 0x02004da5;
att_server_register_packet_handler = 0x02004ebd;
att_server_request_can_send_now_event = 0x02004ec9;
att_set_db = 0x02004ee5;
att_set_read_callback = 0x02004ef9;
att_set_write_callback = 0x02004f05;
bd_addr_cmp = 0x020050ed;
bd_addr_copy = 0x020050f3;
bd_addr_to_str = 0x020050fd;
big_endian_read_16 = 0x02005135;
big_endian_read_32 = 0x0200513d;
big_endian_store_16 = 0x02005151;
big_endian_store_32 = 0x0200515d;
btstack_config = 0x020052bd;
btstack_memory_pool_create = 0x020053fb;
btstack_memory_pool_free = 0x02005425;
btstack_memory_pool_get = 0x02005485;
btstack_push_user_msg = 0x020054ed;
btstack_push_user_runnable = 0x020054f9;
char_for_nibble = 0x02005797;
eTaskConfirmSleepModeStatus = 0x02005aed;
gap_add_dev_to_periodic_list = 0x02006191;
gap_add_whitelist = 0x020061a1;
gap_aes_encrypt = 0x020061ad;
gap_clear_white_lists = 0x020061f1;
gap_clr_adv_set = 0x020061fd;
gap_clr_periodic_adv_list = 0x02006209;
gap_create_connection_cancel = 0x02006215;
gap_default_periodic_adv_sync_transfer_param = 0x02006221;
gap_disconnect = 0x02006239;
gap_disconnect_all = 0x02006265;
gap_ext_create_connection = 0x020062a5;
gap_get_connection_parameter_range = 0x02006395;
gap_le_read_channel_map = 0x020063d1;
gap_periodic_adv_create_sync = 0x0200643d;
gap_periodic_adv_create_sync_cancel = 0x02006461;
gap_periodic_adv_set_info_transfer = 0x0200646d;
gap_periodic_adv_sync_transfer = 0x0200647d;
gap_periodic_adv_sync_transfer_param = 0x0200648d;
gap_periodic_adv_term_sync = 0x020064a9;
gap_read_antenna_info = 0x02006531;
gap_read_periodic_adv_list_size = 0x0200653d;
gap_read_phy = 0x02006549;
gap_read_remote_used_features = 0x02006555;
gap_read_remote_version = 0x02006561;
gap_read_rssi = 0x0200656d;
gap_remove_whitelist = 0x02006579;
gap_rmv_adv_set = 0x020065f5;
gap_rmv_dev_from_periodic_list = 0x02006601;
gap_rx_test_v2 = 0x02006611;
gap_rx_test_v3 = 0x02006621;
gap_set_adv_set_random_addr = 0x0200666d;
gap_set_connection_cte_request_enable = 0x020066b5;
gap_set_connection_cte_response_enable = 0x020066d1;
gap_set_connection_cte_rx_param = 0x020066e1;
gap_set_connection_cte_tx_param = 0x0200673d;
gap_set_connection_parameter_range = 0x02006791;
gap_set_connectionless_cte_tx_enable = 0x020067a9;
gap_set_connectionless_cte_tx_param = 0x020067b9;
gap_set_connectionless_iq_sampling_enable = 0x02006819;
gap_set_data_length = 0x0200687d;
gap_set_def_phy = 0x02006895;
gap_set_ext_adv_data = 0x020068a5;
gap_set_ext_adv_enable = 0x020068bd;
gap_set_ext_adv_para = 0x02006939;
gap_set_ext_scan_enable = 0x02006a09;
gap_set_ext_scan_para = 0x02006a21;
gap_set_ext_scan_response_data = 0x02006ac9;
gap_set_host_channel_classification = 0x02006ae1;
gap_set_periodic_adv_data = 0x02006af1;
gap_set_periodic_adv_enable = 0x02006b61;
gap_set_periodic_adv_para = 0x02006b71;
gap_set_periodic_adv_rx_enable = 0x02006b89;
gap_set_phy = 0x02006b99;
gap_set_random_device_address = 0x02006bb5;
gap_start_ccm = 0x02006be5;
gap_test_end = 0x02006c39;
gap_tx_test_v2 = 0x02006c45;
gap_tx_test_v4 = 0x02006c5d;
gap_update_connection_parameters = 0x02006c81;
gap_vendor_tx_continuous_wave = 0x02006cc5;
gatt_client_cancel_write = 0x020071ed;
gatt_client_discover_characteristic_descriptors = 0x02007213;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x02007253;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x020072a3;
gatt_client_discover_characteristics_for_service = 0x020072f3;
gatt_client_discover_primary_services = 0x02007329;
gatt_client_discover_primary_services_by_uuid128 = 0x0200735b;
gatt_client_discover_primary_services_by_uuid16 = 0x0200739f;
gatt_client_execute_write = 0x020073dd;
gatt_client_find_included_services_for_service = 0x02007403;
gatt_client_get_mtu = 0x02007431;
gatt_client_is_ready = 0x020074f5;
gatt_client_listen_for_characteristic_value_updates = 0x0200750b;
gatt_client_prepare_write = 0x0200752d;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x02007569;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x02007593;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x02007599;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x020075c7;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x020075cd;
gatt_client_read_multiple_characteristic_values = 0x020075fb;
gatt_client_read_value_of_characteristic_using_value_handle = 0x0200762b;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x02007659;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x020076a5;
gatt_client_register_handler = 0x020076f1;
gatt_client_reliable_write_long_value_of_characteristic = 0x020076fd;
gatt_client_signed_write_without_response = 0x02007b31;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x02007bf5;
gatt_client_write_client_characteristic_configuration = 0x02007c2f;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x02007c81;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x02007c91;
gatt_client_write_long_value_of_characteristic = 0x02007ccd;
gatt_client_write_long_value_of_characteristic_with_offset = 0x02007cdd;
gatt_client_write_value_of_characteristic = 0x02007d19;
gatt_client_write_value_of_characteristic_without_response = 0x02007d4f;
hci_add_event_handler = 0x02009345;
hci_power_control = 0x02009b45;
hci_register_acl_packet_handler = 0x02009cf9;
kv_commit = 0x0200a22d;
kv_get = 0x0200a285;
kv_init = 0x0200a29d;
kv_put = 0x0200a305;
kv_remove = 0x0200a37d;
kv_remove_all = 0x0200a3b9;
kv_value_modified = 0x0200a3fd;
kv_visit = 0x0200a401;
l2cap_add_event_handler = 0x0200a4b5;
l2cap_can_send_packet_now = 0x0200a4c5;
l2cap_create_le_credit_based_connection_request = 0x0200a689;
l2cap_credit_based_send = 0x0200a7d1;
l2cap_credit_based_send_continue = 0x0200a7fd;
l2cap_disconnect = 0x0200a879;
l2cap_get_le_credit_based_connection_credits = 0x0200aa65;
l2cap_get_peer_mtu_for_local_cid = 0x0200aa81;
l2cap_init = 0x0200aec1;
l2cap_le_send_flow_control_credit = 0x0200afb7;
l2cap_max_le_mtu = 0x0200b2c5;
l2cap_register_packet_handler = 0x0200b3ed;
l2cap_register_service = 0x0200b3f9;
l2cap_request_can_send_now_event = 0x0200b509;
l2cap_request_connection_parameter_update = 0x0200b523;
l2cap_send_echo_request = 0x0200ba05;
l2cap_unregister_service = 0x0200bae5;
le_device_db_add = 0x0200bb3d;
le_device_db_find = 0x0200bc11;
le_device_db_from_key = 0x0200bc3d;
le_device_db_iter_cur = 0x0200bc45;
le_device_db_iter_cur_key = 0x0200bc49;
le_device_db_iter_init = 0x0200bc4d;
le_device_db_iter_next = 0x0200bc55;
le_device_db_remove_key = 0x0200bc7b;
ll_adjust_conn_peer_tx_power = 0x0200bca9;
ll_aes_encrypt = 0x0200bcd5;
ll_config = 0x0200bd49;
ll_free = 0x0200bd59;
ll_get_heap_free_size = 0x0200bd65;
ll_hint_on_ce_len = 0x0200bd75;
ll_legacy_adv_set_interval = 0x0200bdad;
ll_malloc = 0x0200bdbd;
ll_scan_set_fixed_channel = 0x0200bf2d;
ll_set_adv_access_address = 0x0200c125;
ll_set_adv_coded_scheme = 0x0200c131;
ll_set_conn_coded_scheme = 0x0200c169;
ll_set_conn_latency = 0x0200c195;
ll_set_conn_tx_power = 0x0200c1c5;
ll_set_def_antenna = 0x0200c201;
ll_set_initiating_coded_scheme = 0x0200c221;
ll_set_max_conn_number = 0x0200c22d;
ll_set_tx_power_range = 0x0200c2c9;
nibble_for_char = 0x0201eb41;
platform_32k_rc_auto_tune = 0x0201ebed;
platform_32k_rc_tune = 0x0201ec39;
platform_calibrate_32k = 0x0201ec55;
platform_config = 0x0201ec59;
platform_enable_irq = 0x0201ed7d;
platform_get_current_task = 0x0201edb1;
platform_get_gen_os_driver = 0x0201edd5;
platform_get_heap_status = 0x0201eddd;
platform_get_task_handle = 0x0201edf5;
platform_get_us_time = 0x0201ee15;
platform_get_version = 0x0201ee19;
platform_hrng = 0x0201ee21;
platform_install_isr_stack = 0x0201ee29;
platform_install_task_stack = 0x0201ee35;
platform_patch_rf_init_data = 0x0201ee6d;
platform_printf = 0x0201ee79;
platform_raise_assertion = 0x0201ee8d;
platform_rand = 0x0201eea1;
platform_read_info = 0x0201eea5;
platform_read_persistent_reg = 0x0201eed5;
platform_reset = 0x0201eee1;
platform_set_evt_callback = 0x0201eef5;
platform_set_evt_callback_table = 0x0201ef09;
platform_set_irq_callback = 0x0201ef15;
platform_set_irq_callback_table = 0x0201ef31;
platform_set_rf_clk_source = 0x0201ef3d;
platform_set_rf_init_data = 0x0201ef49;
platform_set_rf_power_mapping = 0x0201ef55;
platform_set_timer = 0x0201ef61;
platform_shutdown = 0x0201ef65;
platform_switch_app = 0x0201ef69;
platform_trace_raw = 0x0201ef81;
platform_write_persistent_reg = 0x0201ef99;
printf_hexdump = 0x0201f151;
pvPortMalloc = 0x0201fc25;
pvTaskIncrementMutexHeldCount = 0x0201fd0d;
pvTimerGetTimerID = 0x0201fd25;
pxPortInitialiseStack = 0x0201fd51;
reverse_128 = 0x0201ff39;
reverse_24 = 0x0201ff3f;
reverse_48 = 0x0201ff45;
reverse_56 = 0x0201ff4b;
reverse_64 = 0x0201ff51;
reverse_bd_addr = 0x0201ff57;
reverse_bytes = 0x0201ff5d;
sm_add_event_handler = 0x02020279;
sm_address_resolution_lookup = 0x020203d1;
sm_authenticated = 0x02020731;
sm_authorization_decline = 0x0202073f;
sm_authorization_grant = 0x0202075f;
sm_authorization_state = 0x0202077f;
sm_bonding_decline = 0x02020799;
sm_config = 0x02020bb1;
sm_config_conn = 0x02020bc9;
sm_encryption_key_size = 0x02020d7f;
sm_just_works_confirm = 0x020212b9;
sm_le_device_key = 0x020215f5;
sm_passkey_input = 0x0202168b;
sm_private_random_address_generation_get = 0x02021a39;
sm_private_random_address_generation_get_mode = 0x02021a41;
sm_private_random_address_generation_set_mode = 0x02021a4d;
sm_private_random_address_generation_set_update_period = 0x02021a75;
sm_register_oob_data_callback = 0x02021bb1;
sm_request_pairing = 0x02021bbd;
sm_send_security_request = 0x020225fb;
sm_set_accepted_stk_generation_methods = 0x02022621;
sm_set_authentication_requirements = 0x0202262d;
sm_set_encryption_key_size_range = 0x02022639;
sscanf_bd_addr = 0x02022999;
sysSetPublicDeviceAddr = 0x02022dfd;
uuid128_to_str = 0x020235a9;
uuid_add_bluetooth_prefix = 0x02023601;
uuid_has_bluetooth_prefix = 0x02023621;
uxListRemove = 0x0202363d;
uxQueueMessagesWaiting = 0x02023665;
uxQueueMessagesWaitingFromISR = 0x0202368d;
uxQueueSpacesAvailable = 0x020236a9;
uxTaskGetStackHighWaterMark = 0x020236d5;
uxTaskPriorityGet = 0x020236f5;
uxTaskPriorityGetFromISR = 0x02023711;
vListInitialise = 0x020237cf;
vListInitialiseItem = 0x020237e5;
vListInsert = 0x020237eb;
vListInsertEnd = 0x0202381b;
vPortEndScheduler = 0x02023835;
vPortEnterCritical = 0x02023861;
vPortExitCritical = 0x020238a5;
vPortFree = 0x020238d9;
vPortSuppressTicksAndSleep = 0x0202397d;
vPortValidateInterruptPriority = 0x02023aa5;
vQueueDelete = 0x02023b01;
vQueueWaitForMessageRestricted = 0x02023b2d;
vTaskDelay = 0x02023b71;
vTaskInternalSetTimeOutState = 0x02023bbd;
vTaskMissedYield = 0x02023bcd;
vTaskPlaceOnEventList = 0x02023bd9;
vTaskPlaceOnEventListRestricted = 0x02023c11;
vTaskPriorityDisinheritAfterTimeout = 0x02023c51;
vTaskPrioritySet = 0x02023cfd;
vTaskResume = 0x02023dc5;
vTaskStartScheduler = 0x02023e49;
vTaskStepTick = 0x02023ed9;
vTaskSuspend = 0x02023f09;
vTaskSuspendAll = 0x02023fc5;
vTaskSwitchContext = 0x02023fd5;
xPortStartScheduler = 0x0202407d;
xQueueAddToSet = 0x02024181;
xQueueCreateCountingSemaphore = 0x020241a5;
xQueueCreateCountingSemaphoreStatic = 0x020241e1;
xQueueCreateMutex = 0x02024225;
xQueueCreateMutexStatic = 0x0202423b;
xQueueCreateSet = 0x02024255;
xQueueGenericCreate = 0x0202425d;
xQueueGenericCreateStatic = 0x020242a9;
xQueueGenericReset = 0x02024311;
xQueueGenericSend = 0x0202439d;
xQueueGenericSendFromISR = 0x02024509;
xQueueGiveFromISR = 0x020245c9;
xQueueGiveMutexRecursive = 0x0202466d;
xQueueIsQueueEmptyFromISR = 0x020246ad;
xQueueIsQueueFullFromISR = 0x020246d1;
xQueuePeek = 0x020246f9;
xQueuePeekFromISR = 0x02024821;
xQueueReceive = 0x0202488d;
xQueueReceiveFromISR = 0x020249b9;
xQueueRemoveFromSet = 0x02024a4d;
xQueueSelectFromSet = 0x02024a6f;
xQueueSelectFromSetFromISR = 0x02024a81;
xQueueSemaphoreTake = 0x02024a95;
xQueueTakeMutexRecursive = 0x02024c01;
xTaskCheckForTimeOut = 0x02024c45;
xTaskCreate = 0x02024cb5;
xTaskCreateStatic = 0x02024d11;
xTaskGetCurrentTaskHandle = 0x02024d81;
xTaskGetSchedulerState = 0x02024d8d;
xTaskGetTickCount = 0x02024da9;
xTaskGetTickCountFromISR = 0x02024db5;
xTaskIncrementTick = 0x02024dc5;
xTaskPriorityDisinherit = 0x02024e91;
xTaskPriorityInherit = 0x02024f25;
xTaskRemoveFromEventList = 0x02024fb9;
xTaskResumeAll = 0x02025039;
xTaskResumeFromISR = 0x02025101;
xTimerCreate = 0x0202518d;
xTimerCreateStatic = 0x020251c1;
xTimerCreateTimerTask = 0x020251f9;
xTimerGenericCommand = 0x02025265;
xTimerGetExpiryTime = 0x020252d5;
xTimerGetTimerDaemonTaskHandle = 0x020252f5;
