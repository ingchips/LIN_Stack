att_dispatch_client_can_send_now = 0x020041d1;
att_dispatch_client_request_can_send_now_event = 0x020041d7;
att_dispatch_register_client = 0x020041dd;
att_dispatch_register_server = 0x020041f1;
att_dispatch_server_can_send_now = 0x02004205;
att_dispatch_server_request_can_send_now_event = 0x0200420b;
att_emit_general_event = 0x020042bd;
att_server_can_send_packet_now = 0x020049d5;
att_server_deferred_read_response = 0x020049d9;
att_server_get_mtu = 0x020049f1;
att_server_indicate = 0x02004a5d;
att_server_init = 0x02004ae1;
att_server_notify = 0x02004b1d;
att_server_register_packet_handler = 0x02004c35;
att_server_request_can_send_now_event = 0x02004c41;
att_set_db = 0x02004c5d;
att_set_read_callback = 0x02004c71;
att_set_write_callback = 0x02004c7d;
bd_addr_cmp = 0x02004e65;
bd_addr_copy = 0x02004e6b;
bd_addr_to_str = 0x02004e75;
big_endian_read_16 = 0x02004ead;
big_endian_read_32 = 0x02004eb5;
big_endian_store_16 = 0x02004ec9;
big_endian_store_32 = 0x02004ed5;
btstack_config = 0x02004f41;
btstack_memory_pool_create = 0x0200508f;
btstack_memory_pool_free = 0x020050b9;
btstack_memory_pool_get = 0x02005119;
btstack_push_user_msg = 0x02005161;
btstack_push_user_runnable = 0x0200516d;
char_for_nibble = 0x0200539b;
gap_add_dev_to_periodic_list = 0x02005d49;
gap_add_whitelist = 0x02005d59;
gap_aes_encrypt = 0x02005d65;
gap_clear_white_lists = 0x02005da9;
gap_clr_adv_set = 0x02005db5;
gap_clr_periodic_adv_list = 0x02005dc1;
gap_create_connection_cancel = 0x02005dcd;
gap_default_periodic_adv_sync_transfer_param = 0x02005dd9;
gap_disconnect = 0x02005df1;
gap_disconnect_all = 0x02005e1d;
gap_ext_create_connection = 0x02005e5d;
gap_get_connection_parameter_range = 0x02005f4d;
gap_le_read_channel_map = 0x02005f85;
gap_periodic_adv_create_sync = 0x02005ff1;
gap_periodic_adv_create_sync_cancel = 0x02006015;
gap_periodic_adv_set_info_transfer = 0x02006021;
gap_periodic_adv_sync_transfer = 0x02006031;
gap_periodic_adv_sync_transfer_param = 0x02006041;
gap_periodic_adv_term_sync = 0x0200605d;
gap_read_antenna_info = 0x020060e5;
gap_read_periodic_adv_list_size = 0x020060f1;
gap_read_phy = 0x020060fd;
gap_read_remote_used_features = 0x02006109;
gap_read_remote_version = 0x02006115;
gap_read_rssi = 0x02006121;
gap_remove_whitelist = 0x0200612d;
gap_rmv_adv_set = 0x020061a9;
gap_rmv_dev_from_periodic_list = 0x020061b5;
gap_rx_test_v2 = 0x020061c5;
gap_rx_test_v3 = 0x020061d5;
gap_set_adv_set_random_addr = 0x02006221;
gap_set_connection_cte_request_enable = 0x02006269;
gap_set_connection_cte_response_enable = 0x02006285;
gap_set_connection_cte_rx_param = 0x02006295;
gap_set_connection_cte_tx_param = 0x020062f1;
gap_set_connection_parameter_range = 0x02006345;
gap_set_connectionless_cte_tx_enable = 0x0200635d;
gap_set_connectionless_cte_tx_param = 0x0200636d;
gap_set_connectionless_iq_sampling_enable = 0x020063cd;
gap_set_data_length = 0x02006431;
gap_set_def_phy = 0x02006449;
gap_set_ext_adv_data = 0x02006459;
gap_set_ext_adv_enable = 0x02006471;
gap_set_ext_adv_para = 0x020064ed;
gap_set_ext_scan_enable = 0x020065bd;
gap_set_ext_scan_para = 0x020065d5;
gap_set_ext_scan_response_data = 0x0200667d;
gap_set_host_channel_classification = 0x02006695;
gap_set_periodic_adv_data = 0x020066a5;
gap_set_periodic_adv_enable = 0x02006715;
gap_set_periodic_adv_para = 0x02006725;
gap_set_periodic_adv_rx_enable = 0x0200673d;
gap_set_phy = 0x0200674d;
gap_set_random_device_address = 0x02006769;
gap_start_ccm = 0x02006799;
gap_test_end = 0x020067ed;
gap_tx_test_v2 = 0x020067f9;
gap_tx_test_v4 = 0x02006811;
gap_update_connection_parameters = 0x02006835;
gap_vendor_tx_continuous_wave = 0x02006875;
gatt_client_cancel_write = 0x02006d9d;
gatt_client_discover_characteristic_descriptors = 0x02006dc3;
gatt_client_discover_characteristics_for_handle_range_by_uuid128 = 0x02006e03;
gatt_client_discover_characteristics_for_handle_range_by_uuid16 = 0x02006e53;
gatt_client_discover_characteristics_for_service = 0x02006ea3;
gatt_client_discover_primary_services = 0x02006ed9;
gatt_client_discover_primary_services_by_uuid128 = 0x02006f0b;
gatt_client_discover_primary_services_by_uuid16 = 0x02006f4f;
gatt_client_execute_write = 0x02006f8d;
gatt_client_find_included_services_for_service = 0x02006fb3;
gatt_client_get_mtu = 0x02006fe1;
gatt_client_is_ready = 0x020070a5;
gatt_client_listen_for_characteristic_value_updates = 0x020070bb;
gatt_client_prepare_write = 0x020070db;
gatt_client_read_characteristic_descriptor_using_descriptor_handle = 0x02007117;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle = 0x02007141;
gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x02007147;
gatt_client_read_long_value_of_characteristic_using_value_handle = 0x02007175;
gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset = 0x0200717b;
gatt_client_read_multiple_characteristic_values = 0x020071a9;
gatt_client_read_value_of_characteristic_using_value_handle = 0x020071d9;
gatt_client_read_value_of_characteristics_by_uuid128 = 0x02007207;
gatt_client_read_value_of_characteristics_by_uuid16 = 0x02007253;
gatt_client_register_handler = 0x0200729d;
gatt_client_reliable_write_long_value_of_characteristic = 0x020072a9;
gatt_client_signed_write_without_response = 0x020076b1;
gatt_client_write_characteristic_descriptor_using_descriptor_handle = 0x02007775;
gatt_client_write_client_characteristic_configuration = 0x020077af;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle = 0x02007801;
gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset = 0x02007811;
gatt_client_write_long_value_of_characteristic = 0x0200784d;
gatt_client_write_long_value_of_characteristic_with_offset = 0x0200785d;
gatt_client_write_value_of_characteristic = 0x02007899;
gatt_client_write_value_of_characteristic_without_response = 0x020078cf;
hci_add_event_handler = 0x02008eb9;
hci_power_control = 0x020096a5;
hci_register_acl_packet_handler = 0x02009859;
kv_commit = 0x02009d89;
kv_get = 0x02009de1;
kv_init = 0x02009df9;
kv_put = 0x02009e61;
kv_remove = 0x02009ed9;
kv_remove_all = 0x02009f15;
kv_value_modified = 0x02009f59;
kv_visit = 0x02009f5d;
l2cap_add_event_handler = 0x0200a011;
l2cap_can_send_packet_now = 0x0200a021;
l2cap_create_le_credit_based_connection_request = 0x0200a1e5;
l2cap_credit_based_send = 0x0200a32d;
l2cap_credit_based_send_continue = 0x0200a359;
l2cap_disconnect = 0x0200a3d5;
l2cap_get_le_credit_based_connection_credits = 0x0200a5c1;
l2cap_get_peer_mtu_for_local_cid = 0x0200a5dd;
l2cap_init = 0x0200aa1d;
l2cap_le_send_flow_control_credit = 0x0200ab13;
l2cap_max_le_mtu = 0x0200ae21;
l2cap_register_packet_handler = 0x0200af49;
l2cap_register_service = 0x0200af55;
l2cap_request_can_send_now_event = 0x0200b065;
l2cap_request_connection_parameter_update = 0x0200b07f;
l2cap_send_echo_request = 0x0200b561;
l2cap_unregister_service = 0x0200b641;
le_device_db_add = 0x0200b699;
le_device_db_find = 0x0200b75d;
le_device_db_from_key = 0x0200b789;
le_device_db_iter_cur = 0x0200b791;
le_device_db_iter_cur_key = 0x0200b795;
le_device_db_iter_init = 0x0200b799;
le_device_db_iter_next = 0x0200b7a1;
le_device_db_remove_key = 0x0200b7c7;
ll_adjust_conn_peer_tx_power = 0x0200b7f5;
ll_aes_encrypt = 0x0200b81d;
ll_config = 0x0200b891;
ll_free = 0x0200b8a1;
ll_get_heap_free_size = 0x0200b8ad;
ll_hint_on_ce_len = 0x0200b8bd;
ll_legacy_adv_set_interval = 0x0200b8f5;
ll_malloc = 0x0200b905;
ll_scan_set_fixed_channel = 0x0200ba75;
ll_set_adv_access_address = 0x0200bc6d;
ll_set_adv_coded_scheme = 0x0200bc79;
ll_set_conn_coded_scheme = 0x0200bca9;
ll_set_conn_latency = 0x0200bcd1;
ll_set_conn_tx_power = 0x0200bcfd;
ll_set_def_antenna = 0x0200bd35;
ll_set_initiating_coded_scheme = 0x0200bd55;
ll_set_max_conn_number = 0x0200bd61;
ll_set_tx_power_range = 0x0200bdfd;
nibble_for_char = 0x0201ce11;
platform_32k_rc_auto_tune = 0x0201ce9d;
platform_32k_rc_tune = 0x0201cee9;
platform_calibrate_32k = 0x0201cf05;
platform_config = 0x0201cf09;
platform_controller_run = 0x0201d031;
platform_enable_irq = 0x0201d069;
platform_get_gen_os_driver = 0x0201d09d;
platform_get_task_handle = 0x0201d0a9;
platform_get_us_time = 0x0201d0c1;
platform_get_version = 0x0201d0c5;
platform_hrng = 0x0201d0cd;
platform_init_controller = 0x0201d0d5;
platform_os_idle_resumed_hook = 0x0201d0f1;
platform_patch_rf_init_data = 0x0201d0f5;
platform_post_sleep_processing = 0x0201d101;
platform_pre_sleep_processing = 0x0201d107;
platform_pre_suppress_ticks_and_sleep_processing = 0x0201d10d;
platform_printf = 0x0201d111;
platform_raise_assertion = 0x0201d125;
platform_rand = 0x0201d139;
platform_read_info = 0x0201d13d;
platform_read_persistent_reg = 0x0201d16d;
platform_reset = 0x0201d179;
platform_set_evt_callback = 0x0201d18d;
platform_set_evt_callback_table = 0x0201d1a1;
platform_set_irq_callback = 0x0201d1ad;
platform_set_irq_callback_table = 0x0201d1c9;
platform_set_rf_clk_source = 0x0201d1d5;
platform_set_rf_init_data = 0x0201d1e1;
platform_set_rf_power_mapping = 0x0201d1ed;
platform_set_timer = 0x0201d1f9;
platform_shutdown = 0x0201d1fd;
platform_switch_app = 0x0201d201;
platform_trace_raw = 0x0201d219;
platform_write_persistent_reg = 0x0201d231;
printf_hexdump = 0x0201d245;
reverse_128 = 0x0201d5b1;
reverse_24 = 0x0201d5b7;
reverse_48 = 0x0201d5bd;
reverse_56 = 0x0201d5c3;
reverse_64 = 0x0201d5c9;
reverse_bd_addr = 0x0201d5cf;
reverse_bytes = 0x0201d5d5;
sm_add_event_handler = 0x0201d8a9;
sm_address_resolution_lookup = 0x0201da01;
sm_authenticated = 0x0201dd61;
sm_authorization_decline = 0x0201dd6f;
sm_authorization_grant = 0x0201dd8f;
sm_authorization_state = 0x0201ddaf;
sm_bonding_decline = 0x0201ddc9;
sm_config = 0x0201e1e1;
sm_config_conn = 0x0201e1f9;
sm_encryption_key_size = 0x0201e3af;
sm_just_works_confirm = 0x0201e8e9;
sm_le_device_key = 0x0201ec25;
sm_passkey_input = 0x0201ecbb;
sm_private_random_address_generation_get = 0x0201f069;
sm_private_random_address_generation_get_mode = 0x0201f071;
sm_private_random_address_generation_set_mode = 0x0201f07d;
sm_private_random_address_generation_set_update_period = 0x0201f0a5;
sm_register_oob_data_callback = 0x0201f1e1;
sm_request_pairing = 0x0201f1ed;
sm_send_security_request = 0x0201fc2b;
sm_set_accepted_stk_generation_methods = 0x0201fc51;
sm_set_authentication_requirements = 0x0201fc5d;
sm_set_encryption_key_size_range = 0x0201fc69;
sscanf_bd_addr = 0x0201ffc9;
sysSetPublicDeviceAddr = 0x020200a5;
uuid128_to_str = 0x020207cd;
uuid_add_bluetooth_prefix = 0x02020825;
uuid_has_bluetooth_prefix = 0x02020845;