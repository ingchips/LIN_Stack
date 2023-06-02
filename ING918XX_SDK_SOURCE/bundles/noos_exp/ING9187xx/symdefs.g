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
char_for_nibble = 0x000068fb;
gap_add_dev_to_periodic_list = 0x000071bd;
gap_add_whitelist = 0x000071cd;
gap_aes_encrypt = 0x000071d9;
gap_clear_white_lists = 0x0000721d;
gap_clr_adv_set = 0x00007229;
gap_clr_periodic_adv_list = 0x00007235;
gap_create_connection_cancel = 0x00007241;
gap_disconnect = 0x0000724d;
gap_disconnect_all = 0x00007279;
gap_ext_create_connection = 0x000072b9;
gap_get_connection_parameter_range = 0x000073c5;
gap_le_read_channel_map = 0x00007401;
gap_periodic_adv_create_sync = 0x0000746d;
gap_periodic_adv_create_sync_cancel = 0x00007491;
gap_periodic_adv_term_sync = 0x0000749d;
gap_read_local_tx_power_level = 0x00007531;
gap_read_periodic_adv_list_size = 0x00007541;
gap_read_phy = 0x0000754d;
gap_read_remote_tx_power_level = 0x00007559;
gap_read_remote_used_features = 0x00007569;
gap_read_remote_version = 0x00007575;
gap_read_rssi = 0x00007581;
gap_remove_whitelist = 0x0000758d;
gap_rmv_adv_set = 0x00007609;
gap_rmv_dev_from_periodic_list = 0x00007615;
gap_rx_test_v2 = 0x00007625;
gap_set_adv_set_random_addr = 0x0000765d;
gap_set_connection_parameter_range = 0x000076a5;
gap_set_data_length = 0x000076bd;
gap_set_def_phy = 0x000076d5;
gap_set_default_subrate = 0x000076e5;
gap_set_ext_adv_data = 0x00007701;
gap_set_ext_adv_enable = 0x00007719;
gap_set_ext_adv_para = 0x00007795;
gap_set_ext_scan_enable = 0x0000786d;
gap_set_ext_scan_para = 0x00007885;
gap_set_ext_scan_response_data = 0x0000792d;
gap_set_host_channel_classification = 0x00007945;
gap_set_path_loss_reporting_enable = 0x00007955;
gap_set_path_loss_reporting_param = 0x00007965;
gap_set_periodic_adv_data = 0x00007981;
gap_set_periodic_adv_enable = 0x000079f1;
gap_set_periodic_adv_para = 0x00007a01;
gap_set_phy = 0x00007a19;
gap_set_random_device_address = 0x00007a35;
gap_set_tx_power_reporting_enable = 0x00007a55;
gap_start_ccm = 0x00007a75;
gap_subrate_request = 0x00007ac9;
gap_test_end = 0x00007ae5;
gap_tx_test_v2 = 0x00007af1;
gap_tx_test_v4 = 0x00007b09;
gap_update_connection_parameters = 0x00007b2d;
gap_vendor_tx_continuous_wave = 0x00007b71;
gatt_client_cancel_write = 0x00008099;
gatt_client_discover_characteristic_descriptors = 0x000080bf;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x000080ff;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x0000814f;
gatt_client_discover_characteristics_for_service = 0x0000819f;
gatt_client_discover_primary_services = 0x000081d5;
gatt_client_discover_primary_services_by_uuid128 = 0x00008207;
gatt_client_discover_primary_services_by_uuid16 = 0x0000824b;
gatt_client_execute_write = 0x00008287;
gatt_client_find_included_services_for_service = 0x000082ad;
gatt_client_get_mtu = 0x000082db;
gatt_client_is_ready = 0x0000837d;
gatt_client_listen_for_characteristic_value_updates = 0x00008393;
gatt_client_prepare_write = 0x000083b5;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x000083f1;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x0000841b;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008421;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x0000844f;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x00008455;
gatt_client_read_multiple_characteristic_values = 0x00008483;
gatt_client_read_value_of_characteristic_using_value_handle = 0x000084b3;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x000084e1;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x0000852d;
gatt_client_register_handler = 0x00008579;
gatt_client_reliable_write_long_value_of_characteristic = 0x00008585;
gatt_client_signed_write_without_response = 0x000089b5;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x00008a79;
gatt_client_write_client_characteristic_configuration = 0x00008ab3;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x00008b05;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x00008b15;
gatt_client_write_long_value_of_characteristic = 0x00008b51;
gatt_client_write_long_value_of_characteristic_with_offset = 0x00008b61;
gatt_client_write_value_of_characteristic = 0x00008b9d;
gatt_client_write_value_of_characteristic_without_response = 0x00008bd3;
hci_add_event_handler = 0x0000a15d;
hci_power_control = 0x0000a965;
hci_register_acl_packet_handler = 0x0000ab19;
kv_commit = 0x0000b0b1;
kv_get = 0x0000b109;
kv_init = 0x0000b121;
kv_put = 0x0000b189;
kv_remove = 0x0000b201;
kv_remove_all = 0x0000b23d;
kv_value_modified = 0x0000b281;
kv_visit = 0x0000b285;
l2cap_add_event_handler = 0x0000b339;
l2cap_can_send_packet_now = 0x0000b349;
l2cap_create_le_credit_based_connection_request = 0x0000b505;
l2cap_credit_based_send = 0x0000b649;
l2cap_credit_based_send_continue = 0x0000b675;
l2cap_disconnect = 0x0000b6f1;
l2cap_get_le_credit_based_connection_credits = 0x0000b941;
l2cap_get_peer_mtu_for_local_cid = 0x0000b95d;
l2cap_init = 0x0000bd31;
l2cap_le_send_flow_control_credit = 0x0000be27;
l2cap_max_le_mtu = 0x0000c131;
l2cap_register_packet_handler = 0x0000c259;
l2cap_register_service = 0x0000c265;
l2cap_request_can_send_now_event = 0x0000c375;
l2cap_request_connection_parameter_update = 0x0000c38f;
l2cap_send_echo_request = 0x0000c861;
l2cap_unregister_service = 0x0000c921;
le_device_db_add = 0x0000c979;
le_device_db_find = 0x0000ca4d;
le_device_db_from_key = 0x0000ca79;
le_device_db_iter_cur = 0x0000ca81;
le_device_db_iter_cur_key = 0x0000ca85;
le_device_db_iter_init = 0x0000ca89;
le_device_db_iter_next = 0x0000ca91;
le_device_db_remove_key = 0x0000cab7;
ll_ackable_packet_alloc = 0x0000cae3;
ll_ackable_packet_get_status = 0x0000cbeb;
ll_ackable_packet_run = 0x0000cc5d;
ll_ackable_packet_set_tx_data = 0x0000cd15;
ll_adjust_conn_peer_tx_power = 0x0000cd3d;
ll_aes_encrypt = 0x0000cd69;
ll_config = 0x0000cde5;
ll_dhkey_generated = 0x0000d011;
ll_free = 0x0000d041;
ll_get_conn_events_info = 0x0000d04d;
ll_get_conn_info = 0x0000d129;
ll_get_heap_free_size = 0x0000d169;
ll_hint_on_ce_len = 0x0000d179;
ll_install_ecc_engine = 0x0000d1b1;
ll_legacy_adv_set_interval = 0x0000d1bd;
ll_lock_frequency = 0x0000d1cd;
ll_malloc = 0x0000d225;
ll_p256_key_pair_generated = 0x0000d22d;
ll_raw_packet_alloc = 0x0000d3dd;
ll_raw_packet_free = 0x0000d4b1;
ll_raw_packet_get_bare_rx_data = 0x0000d4db;
ll_raw_packet_get_rx_data = 0x0000d5a1;
ll_raw_packet_recv = 0x0000d641;
ll_raw_packet_send = 0x0000d6fd;
ll_raw_packet_set_bare_data = 0x0000d7e5;
ll_raw_packet_set_bare_mode = 0x0000d823;
ll_raw_packet_set_param = 0x0000d929;
ll_raw_packet_set_tx_data = 0x0000d987;
ll_scan_set_fixed_channel = 0x0000da45;
ll_set_adv_access_address = 0x0000dc3d;
ll_set_adv_coded_scheme = 0x0000dc49;
ll_set_conn_coded_scheme = 0x0000dc79;
ll_set_conn_interval_unit = 0x0000dca5;
ll_set_conn_latency = 0x0000dcb1;
ll_set_conn_tx_power = 0x0000dce1;
ll_set_def_antenna = 0x0000dd1d;
ll_set_initiating_coded_scheme = 0x0000dd39;
ll_set_max_conn_number = 0x0000dd45;
ll_set_tx_power_range = 0x0000dde1;
ll_unlock_frequency = 0x0000de09;
nibble_for_char = 0x0001f3f9;
platform_32k_rc_auto_tune = 0x0001f495;
platform_32k_rc_tune = 0x0001f511;
platform_calibrate_32k = 0x0001f525;
platform_config = 0x0001f529;
platform_controller_run = 0x0001f64d;
platform_enable_irq = 0x0001f685;
platform_get_gen_os_driver = 0x0001f6bd;
platform_get_task_handle = 0x0001f6c9;
platform_get_us_time = 0x0001f6e1;
platform_get_version = 0x0001f6e5;
platform_hrng = 0x0001f6ed;
platform_init_controller = 0x0001f6f5;
platform_os_idle_resumed_hook = 0x0001f711;
platform_patch_rf_init_data = 0x0001f715;
platform_post_sleep_processing = 0x0001f721;
platform_pre_sleep_processing = 0x0001f727;
platform_pre_suppress_ticks_and_sleep_processing = 0x0001f72d;
platform_printf = 0x0001f731;
platform_raise_assertion = 0x0001f745;
platform_rand = 0x0001f759;
platform_read_info = 0x0001f75d;
platform_read_persistent_reg = 0x0001f78d;
platform_reset = 0x0001f79d;
platform_set_evt_callback = 0x0001f7c1;
platform_set_evt_callback_table = 0x0001f7d5;
platform_set_irq_callback = 0x0001f7e1;
platform_set_irq_callback_table = 0x0001f7fd;
platform_set_rf_clk_source = 0x0001f809;
platform_set_rf_init_data = 0x0001f815;
platform_set_rf_power_mapping = 0x0001f821;
platform_set_timer = 0x0001f82d;
platform_shutdown = 0x0001f831;
platform_switch_app = 0x0001f835;
platform_trace_raw = 0x0001f861;
platform_write_persistent_reg = 0x0001f879;
printf_hexdump = 0x0001f889;
reverse_128 = 0x0001fbc5;
reverse_24 = 0x0001fbcb;
reverse_48 = 0x0001fbd1;
reverse_56 = 0x0001fbd7;
reverse_64 = 0x0001fbdd;
reverse_bd_addr = 0x0001fbe3;
reverse_bytes = 0x0001fbe9;
sm_add_event_handler = 0x0001fd95;
sm_address_resolution_lookup = 0x0001feed;
sm_authenticated = 0x0002024d;
sm_authorization_decline = 0x0002025b;
sm_authorization_grant = 0x0002027b;
sm_authorization_state = 0x0002029b;
sm_bonding_decline = 0x000202b5;
sm_config = 0x000206d5;
sm_config_conn = 0x000206ed;
sm_encryption_key_size = 0x000208a3;
sm_just_works_confirm = 0x00020ddd;
sm_le_device_key = 0x00021119;
sm_passkey_input = 0x000211af;
sm_private_random_address_generation_get = 0x0002155d;
sm_private_random_address_generation_get_mode = 0x00021565;
sm_private_random_address_generation_set_mode = 0x00021571;
sm_private_random_address_generation_set_update_period = 0x00021599;
sm_register_oob_data_callback = 0x000216d5;
sm_request_pairing = 0x000216e1;
sm_send_security_request = 0x0002211b;
sm_set_accepted_stk_generation_methods = 0x00022141;
sm_set_authentication_requirements = 0x0002214d;
sm_set_encryption_key_size_range = 0x00022159;
sscanf_bd_addr = 0x00022529;
sysSetPublicDeviceAddr = 0x000228dd;
uuid128_to_str = 0x00022ee9;
uuid_add_bluetooth_prefix = 0x00022f41;
uuid_has_bluetooth_prefix = 0x00022f61;
