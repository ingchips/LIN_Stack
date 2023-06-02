att_dispatch_client_can_send_now = 0x00005779;
att_dispatch_client_request_can_send_now_event = 0x0000577f;
att_dispatch_register_client = 0x00005785;
att_dispatch_register_server = 0x00005799;
att_dispatch_server_can_send_now = 0x000057ad;
att_dispatch_server_request_can_send_now_event = 0x000057b3;
att_emit_general_event = 0x00005865;
att_server_can_send_packet_now = 0x00005f75;
att_server_deferred_read_response = 0x00005f79;
att_server_get_mtu = 0x00005f91;
att_server_indicate = 0x00005ffd;
att_server_init = 0x00006081;
att_server_notify = 0x000060bd;
att_server_register_packet_handler = 0x000061d5;
att_server_request_can_send_now_event = 0x000061e1;
att_set_db = 0x000061fd;
att_set_read_callback = 0x00006211;
att_set_write_callback = 0x0000621d;
bd_addr_cmp = 0x0000638d;
bd_addr_copy = 0x00006393;
bd_addr_to_str = 0x0000639d;
big_endian_read_16 = 0x000063d5;
big_endian_read_32 = 0x000063dd;
big_endian_store_16 = 0x000063f1;
big_endian_store_32 = 0x000063fd;
btstack_config = 0x00006535;
btstack_memory_pool_create = 0x00006683;
btstack_memory_pool_free = 0x000066ad;
btstack_memory_pool_get = 0x0000670d;
btstack_push_user_msg = 0x00006755;
btstack_push_user_runnable = 0x00006761;
char_for_nibble = 0x000069d1;
gap_add_dev_to_periodic_list = 0x000072fd;
gap_add_whitelist = 0x0000730d;
gap_aes_encrypt = 0x00007319;
gap_clear_white_lists = 0x0000735d;
gap_clr_adv_set = 0x00007369;
gap_clr_periodic_adv_list = 0x00007375;
gap_create_connection_cancel = 0x00007381;
gap_default_periodic_adv_sync_transfer_param = 0x0000738d;
gap_disconnect = 0x000073a5;
gap_disconnect_all = 0x000073d1;
gap_ext_create_connection = 0x00007411;
gap_get_connection_parameter_range = 0x00007501;
gap_le_read_channel_map = 0x00007539;
gap_periodic_adv_create_sync = 0x000075a5;
gap_periodic_adv_create_sync_cancel = 0x000075c9;
gap_periodic_adv_set_info_transfer = 0x000075d5;
gap_periodic_adv_sync_transfer = 0x000075e5;
gap_periodic_adv_sync_transfer_param = 0x000075f5;
gap_periodic_adv_term_sync = 0x00007611;
gap_read_antenna_info = 0x00007699;
gap_read_periodic_adv_list_size = 0x000076a5;
gap_read_phy = 0x000076b1;
gap_read_remote_used_features = 0x000076bd;
gap_read_remote_version = 0x000076c9;
gap_read_rssi = 0x000076d5;
gap_remove_whitelist = 0x000076e1;
gap_rmv_adv_set = 0x0000775d;
gap_rmv_dev_from_periodic_list = 0x00007769;
gap_rx_test_v2 = 0x00007779;
gap_rx_test_v3 = 0x00007789;
gap_set_adv_set_random_addr = 0x000077d5;
gap_set_connection_cte_request_enable = 0x0000781d;
gap_set_connection_cte_response_enable = 0x00007839;
gap_set_connection_cte_rx_param = 0x00007849;
gap_set_connection_cte_tx_param = 0x000078a5;
gap_set_connection_parameter_range = 0x000078f9;
gap_set_connectionless_cte_tx_enable = 0x00007911;
gap_set_connectionless_cte_tx_param = 0x00007921;
gap_set_connectionless_iq_sampling_enable = 0x00007981;
gap_set_data_length = 0x000079e5;
gap_set_def_phy = 0x000079fd;
gap_set_ext_adv_data = 0x00007a0d;
gap_set_ext_adv_enable = 0x00007a25;
gap_set_ext_adv_para = 0x00007aa1;
gap_set_ext_scan_enable = 0x00007b79;
gap_set_ext_scan_para = 0x00007b91;
gap_set_ext_scan_response_data = 0x00007c39;
gap_set_host_channel_classification = 0x00007c51;
gap_set_periodic_adv_data = 0x00007c61;
gap_set_periodic_adv_enable = 0x00007cd1;
gap_set_periodic_adv_para = 0x00007ce1;
gap_set_periodic_adv_rx_enable = 0x00007cf9;
gap_set_phy = 0x00007d09;
gap_set_random_device_address = 0x00007d25;
gap_start_ccm = 0x00007d55;
gap_test_end = 0x00007da9;
gap_tx_test_v2 = 0x00007db5;
gap_tx_test_v4 = 0x00007dcd;
gap_update_connection_parameters = 0x00007df1;
gap_vendor_tx_continuous_wave = 0x00007e31;
gatt_client_cancel_write = 0x00008359;
gatt_client_discover_characteristic_descriptors = 0x0000837f;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x000083bf;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x0000840f;
gatt_client_discover_characteristics_for_service = 0x0000845f;
gatt_client_discover_primary_services = 0x00008495;
gatt_client_discover_primary_services_by_uuid128 = 0x000084c7;
gatt_client_discover_primary_services_by_uuid16 = 0x0000850b;
gatt_client_execute_write = 0x00008547;
gatt_client_find_included_services_for_service = 0x0000856d;
gatt_client_get_mtu = 0x0000859b;
gatt_client_is_ready = 0x00008639;
gatt_client_listen_for_characteristic_value_updates = 0x0000864f;
gatt_client_prepare_write = 0x0000866f;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x000086ab;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x000086d5;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x000086db;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x00008709;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x0000870f;
gatt_client_read_multiple_characteristic_values = 0x0000873d;
gatt_client_read_value_of_characteristic_using_value_handle = 0x0000876d;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x0000879b;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x000087e7;
gatt_client_register_handler = 0x00008831;
gatt_client_reliable_write_long_value_of_characteristic = 0x0000883d;
gatt_client_signed_write_without_response = 0x00008c41;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008d05;
gatt_client_write_client_characteristic_configuration = 0x00008d3f;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008d91;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008da1;
gatt_client_write_long_value_of_characteristic = 0x00008ddd;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008ded;
gatt_client_write_value_of_characteristic = 0x00008e29;
gatt_client_write_value_of_characteristic_without_response = 0x00008e5f;
hci_add_event_handler = 0x0000a395;
hci_power_control = 0x0000ab75;
hci_register_acl_packet_handler = 0x0000ad29;
kv_commit = 0x0000b2b5;
kv_get = 0x0000b30d;
kv_init = 0x0000b325;
kv_put = 0x0000b389;
kv_remove = 0x0000b3fd;
kv_remove_all = 0x0000b439;
kv_value_modified = 0x0000b47d;
kv_visit = 0x0000b481;
l2cap_add_event_handler = 0x0000b535;
l2cap_can_send_packet_now = 0x0000b545;
l2cap_create_le_credit_based_connection_request = 0x0000b701;
l2cap_credit_based_send = 0x0000b845;
l2cap_credit_based_send_continue = 0x0000b871;
l2cap_disconnect = 0x0000b8ed;
l2cap_get_le_credit_based_connection_credits = 0x0000bb3d;
l2cap_get_peer_mtu_for_local_cid = 0x0000bb59;
l2cap_init = 0x0000bf2d;
l2cap_le_send_flow_control_credit = 0x0000c023;
l2cap_max_le_mtu = 0x0000c32d;
l2cap_register_packet_handler = 0x0000c455;
l2cap_register_service = 0x0000c461;
l2cap_request_can_send_now_event = 0x0000c571;
l2cap_request_connection_parameter_update = 0x0000c58b;
l2cap_send_echo_request = 0x0000ca5d;
l2cap_unregister_service = 0x0000cb1d;
le_device_db_add = 0x0000cb75;
le_device_db_find = 0x0000cc39;
le_device_db_from_key = 0x0000cc65;
le_device_db_iter_cur = 0x0000cc6d;
le_device_db_iter_cur_key = 0x0000cc71;
le_device_db_iter_init = 0x0000cc75;
le_device_db_iter_next = 0x0000cc7d;
le_device_db_remove_key = 0x0000cca3;
ll_aes_encrypt = 0x0000ccd1;
ll_config = 0x0000cd4d;
ll_free = 0x0000cd5d;
ll_get_heap_free_size = 0x0000cd69;
ll_hint_on_ce_len = 0x0000cd79;
ll_legacy_adv_set_interval = 0x0000cdb1;
ll_malloc = 0x0000cdc1;
ll_query_timing_info = 0x0000cef9;
ll_scan_set_fixed_channel = 0x0000cf9d;
ll_set_adv_access_address = 0x0000d195;
ll_set_adv_coded_scheme = 0x0000d1a1;
ll_set_conn_coded_scheme = 0x0000d1c9;
ll_set_conn_latency = 0x0000d1f1;
ll_set_conn_tx_power = 0x0000d21d;
ll_set_def_antenna = 0x0000d261;
ll_set_initiating_coded_scheme = 0x0000d27d;
ll_set_max_conn_number = 0x0000d289;
nibble_for_char = 0x0001df9d;
platform_32k_rc_auto_tune = 0x0001e02d;
platform_32k_rc_tune = 0x0001e0a9;
platform_calibrate_32k = 0x0001e0bd;
platform_config = 0x0001e0c1;
platform_controller_run = 0x0001e1e5;
platform_enable_irq = 0x0001e21d;
platform_get_gen_os_driver = 0x0001e255;
platform_get_task_handle = 0x0001e261;
platform_get_us_time = 0x0001e279;
platform_get_version = 0x0001e27d;
platform_hrng = 0x0001e285;
platform_init_controller = 0x0001e28d;
platform_os_idle_resumed_hook = 0x0001e2a9;
platform_patch_rf_init_data = 0x0001e2ad;
platform_post_sleep_processing = 0x0001e2b9;
platform_pre_sleep_processing = 0x0001e2bf;
platform_pre_suppress_ticks_and_sleep_processing = 0x0001e2c5;
platform_printf = 0x0001e2c9;
platform_raise_assertion = 0x0001e2dd;
platform_rand = 0x0001e2f1;
platform_read_info = 0x0001e2f5;
platform_read_persistent_reg = 0x0001e325;
platform_reset = 0x0001e335;
platform_set_evt_callback = 0x0001e359;
platform_set_evt_callback_table = 0x0001e36d;
platform_set_irq_callback = 0x0001e379;
platform_set_irq_callback_table = 0x0001e395;
platform_set_rf_clk_source = 0x0001e3a1;
platform_set_rf_init_data = 0x0001e3ad;
platform_set_rf_power_mapping = 0x0001e3b9;
platform_set_timer = 0x0001e3c5;
platform_shutdown = 0x0001e3c9;
platform_switch_app = 0x0001e3cd;
platform_trace_raw = 0x0001e3f9;
platform_write_persistent_reg = 0x0001e411;
printf_hexdump = 0x0001e421;
reverse_128 = 0x0001e78d;
reverse_24 = 0x0001e793;
reverse_48 = 0x0001e799;
reverse_56 = 0x0001e79f;
reverse_64 = 0x0001e7a5;
reverse_bd_addr = 0x0001e7ab;
reverse_bytes = 0x0001e7b1;
sm_add_event_handler = 0x0001ea71;
sm_address_resolution_lookup = 0x0001ebc9;
sm_authenticated = 0x0001ef29;
sm_authorization_decline = 0x0001ef37;
sm_authorization_grant = 0x0001ef57;
sm_authorization_state = 0x0001ef77;
sm_bonding_decline = 0x0001ef91;
sm_config = 0x0001f3b1;
sm_config_conn = 0x0001f3c9;
sm_encryption_key_size = 0x0001f57f;
sm_just_works_confirm = 0x0001fab9;
sm_le_device_key = 0x0001fdf5;
sm_passkey_input = 0x0001fe8b;
sm_private_random_address_generation_get = 0x00020239;
sm_private_random_address_generation_get_mode = 0x00020241;
sm_private_random_address_generation_set_mode = 0x0002024d;
sm_private_random_address_generation_set_update_period = 0x00020275;
sm_register_oob_data_callback = 0x000203b1;
sm_request_pairing = 0x000203bd;
sm_send_security_request = 0x00020df7;
sm_set_accepted_stk_generation_methods = 0x00020e1d;
sm_set_authentication_requirements = 0x00020e29;
sm_set_encryption_key_size_range = 0x00020e35;
sscanf_bd_addr = 0x00021191;
sysSetPublicDeviceAddr = 0x00021545;
uuid128_to_str = 0x00021cbd;
uuid_add_bluetooth_prefix = 0x00021d15;
uuid_has_bluetooth_prefix = 0x00021d35;
