att_dispatch_client_can_send_now = 0x0000565d;
att_dispatch_client_request_can_send_now_event = 0x00005663;
att_dispatch_register_client = 0x00005669;
att_dispatch_register_server = 0x0000567d;
att_dispatch_server_can_send_now = 0x00005691;
att_dispatch_server_request_can_send_now_event = 0x00005697;
att_emit_general_event = 0x00005749;
att_server_can_send_packet_now = 0x00005e5d;
att_server_deferred_read_response = 0x00005e61;
att_server_get_mtu = 0x00005e79;
att_server_indicate = 0x00005ef1;
att_server_init = 0x00005f75;
att_server_notify = 0x00005fb1;
att_server_register_packet_handler = 0x000060c9;
att_server_request_can_send_now_event = 0x000060d5;
att_set_db = 0x000060f1;
att_set_read_callback = 0x00006105;
att_set_write_callback = 0x00006111;
bd_addr_cmp = 0x00006281;
bd_addr_copy = 0x00006287;
bd_addr_to_str = 0x00006291;
big_endian_read_16 = 0x000062c9;
big_endian_read_32 = 0x000062d1;
big_endian_store_16 = 0x000062e5;
big_endian_store_32 = 0x000062f1;
btstack_config = 0x00006429;
btstack_memory_pool_create = 0x00006577;
btstack_memory_pool_free = 0x000065a1;
btstack_memory_pool_get = 0x00006601;
btstack_push_user_msg = 0x00006649;
btstack_push_user_runnable = 0x00006655;
char_for_nibble = 0x000068c5;
gap_add_dev_to_periodic_list = 0x00007185;
gap_add_whitelist = 0x00007195;
gap_aes_encrypt = 0x000071a1;
gap_clear_white_lists = 0x000071e5;
gap_clr_adv_set = 0x000071f1;
gap_clr_periodic_adv_list = 0x000071fd;
gap_create_connection_cancel = 0x00007209;
gap_disconnect = 0x00007215;
gap_disconnect_all = 0x00007241;
gap_ext_create_connection = 0x00007281;
gap_get_connection_parameter_range = 0x00007371;
gap_le_read_channel_map = 0x000073ad;
gap_periodic_adv_create_sync = 0x00007419;
gap_periodic_adv_create_sync_cancel = 0x0000743d;
gap_periodic_adv_term_sync = 0x00007449;
gap_read_periodic_adv_list_size = 0x000074d1;
gap_read_phy = 0x000074dd;
gap_read_remote_used_features = 0x000074e9;
gap_read_remote_version = 0x000074f5;
gap_read_rssi = 0x00007501;
gap_remove_whitelist = 0x0000750d;
gap_rmv_adv_set = 0x00007589;
gap_rmv_dev_from_periodic_list = 0x00007595;
gap_rx_test_v2 = 0x000075a5;
gap_set_adv_set_random_addr = 0x000075dd;
gap_set_connection_parameter_range = 0x00007625;
gap_set_data_length = 0x0000763d;
gap_set_def_phy = 0x00007655;
gap_set_ext_adv_data = 0x00007665;
gap_set_ext_adv_enable = 0x0000767d;
gap_set_ext_adv_para = 0x000076f9;
gap_set_ext_scan_enable = 0x000077d1;
gap_set_ext_scan_para = 0x000077e9;
gap_set_ext_scan_response_data = 0x00007891;
gap_set_host_channel_classification = 0x000078a9;
gap_set_periodic_adv_data = 0x000078b9;
gap_set_periodic_adv_enable = 0x00007929;
gap_set_periodic_adv_para = 0x00007939;
gap_set_phy = 0x00007951;
gap_set_random_device_address = 0x0000796d;
gap_start_ccm = 0x0000799d;
gap_test_end = 0x000079f1;
gap_tx_test_v2 = 0x000079fd;
gap_tx_test_v4 = 0x00007a15;
gap_update_connection_parameters = 0x00007a39;
gap_vendor_tx_continuous_wave = 0x00007a7d;
gatt_client_cancel_write = 0x00007fa5;
gatt_client_discover_characteristic_descriptors = 0x00007fcb;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x0000800b;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x0000805b;
gatt_client_discover_characteristics_for_service = 0x000080ab;
gatt_client_discover_primary_services = 0x000080e1;
gatt_client_discover_primary_services_by_uuid128 = 0x00008113;
gatt_client_discover_primary_services_by_uuid16 = 0x00008157;
gatt_client_execute_write = 0x00008193;
gatt_client_find_included_services_for_service = 0x000081b9;
gatt_client_get_mtu = 0x000081e7;
gatt_client_is_ready = 0x00008289;
gatt_client_listen_for_characteristic_value_updates = 0x0000829f;
gatt_client_prepare_write = 0x000082c1;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x000082fd;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x00008327;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x0000832d;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x0000835b;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x00008361;
gatt_client_read_multiple_characteristic_values = 0x0000838f;
gatt_client_read_value_of_characteristic_using_value_handle = 0x000083bf;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x000083ed;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x00008439;
gatt_client_register_handler = 0x00008485;
gatt_client_reliable_write_long_value_of_characteristic = 0x00008491;
gatt_client_signed_write_without_response = 0x000088c1;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008985;
gatt_client_write_client_characteristic_configuration = 0x000089bf;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008a11;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008a21;
gatt_client_write_long_value_of_characteristic = 0x00008a5d;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008a6d;
gatt_client_write_value_of_characteristic = 0x00008aa9;
gatt_client_write_value_of_characteristic_without_response = 0x00008adf;
hci_add_event_handler = 0x0000a005;
hci_power_control = 0x0000a7f9;
hci_register_acl_packet_handler = 0x0000a9ad;
kv_commit = 0x0000af45;
kv_get = 0x0000af9d;
kv_init = 0x0000afb5;
kv_put = 0x0000b01d;
kv_remove = 0x0000b095;
kv_remove_all = 0x0000b0d1;
kv_value_modified = 0x0000b115;
kv_visit = 0x0000b119;
l2cap_add_event_handler = 0x0000b1cd;
l2cap_can_send_packet_now = 0x0000b1dd;
l2cap_create_le_credit_based_connection_request = 0x0000b399;
l2cap_credit_based_send = 0x0000b4dd;
l2cap_credit_based_send_continue = 0x0000b509;
l2cap_disconnect = 0x0000b585;
l2cap_get_le_credit_based_connection_credits = 0x0000b7d5;
l2cap_get_peer_mtu_for_local_cid = 0x0000b7f1;
l2cap_init = 0x0000bbc5;
l2cap_le_send_flow_control_credit = 0x0000bcbb;
l2cap_max_le_mtu = 0x0000bfc5;
l2cap_register_packet_handler = 0x0000c0ed;
l2cap_register_service = 0x0000c0f9;
l2cap_request_can_send_now_event = 0x0000c209;
l2cap_request_connection_parameter_update = 0x0000c223;
l2cap_send_echo_request = 0x0000c6f5;
l2cap_unregister_service = 0x0000c7b5;
le_device_db_add = 0x0000c80d;
le_device_db_find = 0x0000c8e1;
le_device_db_from_key = 0x0000c90d;
le_device_db_iter_cur = 0x0000c915;
le_device_db_iter_cur_key = 0x0000c919;
le_device_db_iter_init = 0x0000c91d;
le_device_db_iter_next = 0x0000c925;
le_device_db_remove_key = 0x0000c94b;
ll_aes_encrypt = 0x0000c979;
ll_config = 0x0000c9f5;
ll_free = 0x0000ca05;
ll_get_heap_free_size = 0x0000ca11;
ll_hint_on_ce_len = 0x0000ca21;
ll_legacy_adv_set_interval = 0x0000ca59;
ll_malloc = 0x0000ca69;
ll_query_timing_info = 0x0000cba1;
ll_scan_set_fixed_channel = 0x0000cc45;
ll_set_adv_access_address = 0x0000ce3d;
ll_set_adv_coded_scheme = 0x0000ce49;
ll_set_conn_coded_scheme = 0x0000ce79;
ll_set_conn_latency = 0x0000cea5;
ll_set_conn_tx_power = 0x0000ced5;
ll_set_def_antenna = 0x0000cf1d;
ll_set_initiating_coded_scheme = 0x0000cf39;
ll_set_max_conn_number = 0x0000cf45;
nibble_for_char = 0x0001ce99;
platform_32k_rc_auto_tune = 0x0001cf35;
platform_32k_rc_tune = 0x0001cfb1;
platform_calibrate_32k = 0x0001cfc5;
platform_config = 0x0001cfc9;
platform_controller_run = 0x0001d0ed;
platform_enable_irq = 0x0001d125;
platform_get_gen_os_driver = 0x0001d15d;
platform_get_task_handle = 0x0001d169;
platform_get_us_time = 0x0001d181;
platform_get_version = 0x0001d185;
platform_hrng = 0x0001d18d;
platform_init_controller = 0x0001d195;
platform_os_idle_resumed_hook = 0x0001d1b1;
platform_patch_rf_init_data = 0x0001d1b5;
platform_post_sleep_processing = 0x0001d1c1;
platform_pre_sleep_processing = 0x0001d1c7;
platform_pre_suppress_ticks_and_sleep_processing = 0x0001d1cd;
platform_printf = 0x0001d1d1;
platform_raise_assertion = 0x0001d1e5;
platform_rand = 0x0001d1f9;
platform_read_info = 0x0001d1fd;
platform_read_persistent_reg = 0x0001d22d;
platform_reset = 0x0001d23d;
platform_set_evt_callback = 0x0001d261;
platform_set_evt_callback_table = 0x0001d275;
platform_set_irq_callback = 0x0001d281;
platform_set_irq_callback_table = 0x0001d29d;
platform_set_rf_clk_source = 0x0001d2a9;
platform_set_rf_init_data = 0x0001d2b5;
platform_set_rf_power_mapping = 0x0001d2c1;
platform_set_timer = 0x0001d2cd;
platform_shutdown = 0x0001d2d1;
platform_switch_app = 0x0001d2d5;
platform_trace_raw = 0x0001d301;
platform_write_persistent_reg = 0x0001d319;
printf_hexdump = 0x0001d329;
reverse_128 = 0x0001d665;
reverse_24 = 0x0001d66b;
reverse_48 = 0x0001d671;
reverse_56 = 0x0001d677;
reverse_64 = 0x0001d67d;
reverse_bd_addr = 0x0001d683;
reverse_bytes = 0x0001d689;
sm_add_event_handler = 0x0001d7f5;
sm_address_resolution_lookup = 0x0001d94d;
sm_authenticated = 0x0001dcad;
sm_authorization_decline = 0x0001dcbb;
sm_authorization_grant = 0x0001dcdb;
sm_authorization_state = 0x0001dcfb;
sm_bonding_decline = 0x0001dd15;
sm_config = 0x0001e135;
sm_config_conn = 0x0001e14d;
sm_encryption_key_size = 0x0001e303;
sm_just_works_confirm = 0x0001e83d;
sm_le_device_key = 0x0001eb79;
sm_passkey_input = 0x0001ec0f;
sm_private_random_address_generation_get = 0x0001efbd;
sm_private_random_address_generation_get_mode = 0x0001efc5;
sm_private_random_address_generation_set_mode = 0x0001efd1;
sm_private_random_address_generation_set_update_period = 0x0001eff9;
sm_register_oob_data_callback = 0x0001f135;
sm_request_pairing = 0x0001f141;
sm_send_security_request = 0x0001fb7b;
sm_set_accepted_stk_generation_methods = 0x0001fba1;
sm_set_authentication_requirements = 0x0001fbad;
sm_set_encryption_key_size_range = 0x0001fbb9;
sscanf_bd_addr = 0x0001ff15;
sysSetPublicDeviceAddr = 0x000202c9;
uuid128_to_str = 0x000208ad;
uuid_add_bluetooth_prefix = 0x00020905;
uuid_has_bluetooth_prefix = 0x00020925;
