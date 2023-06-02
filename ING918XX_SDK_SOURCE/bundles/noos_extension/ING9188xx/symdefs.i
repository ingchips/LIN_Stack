--define_symbol att_dispatch_client_can_send_now=0x00005781
--define_symbol att_dispatch_client_request_can_send_now_event=0x00005787
--define_symbol att_dispatch_register_client=0x0000578d
--define_symbol att_dispatch_register_server=0x000057a1
--define_symbol att_dispatch_server_can_send_now=0x000057b5
--define_symbol att_dispatch_server_request_can_send_now_event=0x000057bb
--define_symbol att_emit_general_event=0x0000586d
--define_symbol att_server_can_send_packet_now=0x00005f81
--define_symbol att_server_deferred_read_response=0x00005f85
--define_symbol att_server_get_mtu=0x00005f9d
--define_symbol att_server_indicate=0x00006015
--define_symbol att_server_init=0x00006099
--define_symbol att_server_notify=0x000060d5
--define_symbol att_server_register_packet_handler=0x000061ed
--define_symbol att_server_request_can_send_now_event=0x000061f9
--define_symbol att_set_db=0x00006215
--define_symbol att_set_read_callback=0x00006229
--define_symbol att_set_write_callback=0x00006235
--define_symbol bd_addr_cmp=0x000063a5
--define_symbol bd_addr_copy=0x000063ab
--define_symbol bd_addr_to_str=0x000063b5
--define_symbol big_endian_read_16=0x000063ed
--define_symbol big_endian_read_32=0x000063f5
--define_symbol big_endian_store_16=0x00006409
--define_symbol big_endian_store_32=0x00006415
--define_symbol btstack_config=0x0000654d
--define_symbol btstack_memory_pool_create=0x0000669b
--define_symbol btstack_memory_pool_free=0x000066c5
--define_symbol btstack_memory_pool_get=0x00006725
--define_symbol btstack_push_user_msg=0x0000676d
--define_symbol btstack_push_user_runnable=0x00006779
--define_symbol char_for_nibble=0x000069e9
--define_symbol gap_add_dev_to_periodic_list=0x0000731d
--define_symbol gap_add_whitelist=0x0000732d
--define_symbol gap_aes_encrypt=0x00007339
--define_symbol gap_clear_white_lists=0x0000737d
--define_symbol gap_clr_adv_set=0x00007389
--define_symbol gap_clr_periodic_adv_list=0x00007395
--define_symbol gap_create_connection_cancel=0x000073a1
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x000073ad
--define_symbol gap_disconnect=0x000073c5
--define_symbol gap_disconnect_all=0x000073f1
--define_symbol gap_ext_create_connection=0x00007431
--define_symbol gap_get_connection_parameter_range=0x00007521
--define_symbol gap_le_read_channel_map=0x0000755d
--define_symbol gap_periodic_adv_create_sync=0x000075c9
--define_symbol gap_periodic_adv_create_sync_cancel=0x000075ed
--define_symbol gap_periodic_adv_set_info_transfer=0x000075f9
--define_symbol gap_periodic_adv_sync_transfer=0x00007609
--define_symbol gap_periodic_adv_sync_transfer_param=0x00007619
--define_symbol gap_periodic_adv_term_sync=0x00007635
--define_symbol gap_read_antenna_info=0x000076bd
--define_symbol gap_read_periodic_adv_list_size=0x000076c9
--define_symbol gap_read_phy=0x000076d5
--define_symbol gap_read_remote_used_features=0x000076e1
--define_symbol gap_read_remote_version=0x000076ed
--define_symbol gap_read_rssi=0x000076f9
--define_symbol gap_remove_whitelist=0x00007705
--define_symbol gap_rmv_adv_set=0x00007781
--define_symbol gap_rmv_dev_from_periodic_list=0x0000778d
--define_symbol gap_rx_test_v2=0x0000779d
--define_symbol gap_rx_test_v3=0x000077ad
--define_symbol gap_set_adv_set_random_addr=0x000077f9
--define_symbol gap_set_connection_cte_request_enable=0x00007841
--define_symbol gap_set_connection_cte_response_enable=0x0000785d
--define_symbol gap_set_connection_cte_rx_param=0x0000786d
--define_symbol gap_set_connection_cte_tx_param=0x000078c9
--define_symbol gap_set_connection_parameter_range=0x0000791d
--define_symbol gap_set_connectionless_cte_tx_enable=0x00007935
--define_symbol gap_set_connectionless_cte_tx_param=0x00007945
--define_symbol gap_set_connectionless_iq_sampling_enable=0x000079a5
--define_symbol gap_set_data_length=0x00007a09
--define_symbol gap_set_def_phy=0x00007a21
--define_symbol gap_set_ext_adv_data=0x00007a31
--define_symbol gap_set_ext_adv_enable=0x00007a49
--define_symbol gap_set_ext_adv_para=0x00007ac5
--define_symbol gap_set_ext_scan_enable=0x00007b9d
--define_symbol gap_set_ext_scan_para=0x00007bb5
--define_symbol gap_set_ext_scan_response_data=0x00007c5d
--define_symbol gap_set_host_channel_classification=0x00007c75
--define_symbol gap_set_periodic_adv_data=0x00007c85
--define_symbol gap_set_periodic_adv_enable=0x00007cf5
--define_symbol gap_set_periodic_adv_para=0x00007d05
--define_symbol gap_set_periodic_adv_rx_enable=0x00007d1d
--define_symbol gap_set_phy=0x00007d2d
--define_symbol gap_set_random_device_address=0x00007d49
--define_symbol gap_start_ccm=0x00007d79
--define_symbol gap_test_end=0x00007dcd
--define_symbol gap_tx_test_v2=0x00007dd9
--define_symbol gap_tx_test_v4=0x00007df1
--define_symbol gap_update_connection_parameters=0x00007e15
--define_symbol gap_vendor_tx_continuous_wave=0x00007e59
--define_symbol gatt_client_cancel_write=0x00008381
--define_symbol gatt_client_discover_characteristic_descriptors=0x000083a7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x000083e7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008437
--define_symbol gatt_client_discover_characteristics_for_service=0x00008487
--define_symbol gatt_client_discover_primary_services=0x000084bd
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x000084ef
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008533
--define_symbol gatt_client_execute_write=0x0000856f
--define_symbol gatt_client_find_included_services_for_service=0x00008595
--define_symbol gatt_client_get_mtu=0x000085c3
--define_symbol gatt_client_is_ready=0x00008665
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x0000867b
--define_symbol gatt_client_prepare_write=0x0000869d
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x000086d9
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008703
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008709
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008737
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x0000873d
--define_symbol gatt_client_read_multiple_characteristic_values=0x0000876b
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x0000879b
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x000087c9
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008815
--define_symbol gatt_client_register_handler=0x00008861
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x0000886d
--define_symbol gatt_client_signed_write_without_response=0x00008c9d
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008d61
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008d9b
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008ded
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008dfd
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008e39
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008e49
--define_symbol gatt_client_write_value_of_characteristic=0x00008e85
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008ebb
--define_symbol hci_add_event_handler=0x0000a3fd
--define_symbol hci_power_control=0x0000abf5
--define_symbol hci_register_acl_packet_handler=0x0000ada9
--define_symbol kv_commit=0x0000b341
--define_symbol kv_get=0x0000b399
--define_symbol kv_init=0x0000b3b1
--define_symbol kv_put=0x0000b419
--define_symbol kv_remove=0x0000b491
--define_symbol kv_remove_all=0x0000b4cd
--define_symbol kv_value_modified=0x0000b511
--define_symbol kv_visit=0x0000b515
--define_symbol l2cap_add_event_handler=0x0000b5c9
--define_symbol l2cap_can_send_packet_now=0x0000b5d9
--define_symbol l2cap_create_le_credit_based_connection_request=0x0000b795
--define_symbol l2cap_credit_based_send=0x0000b8d9
--define_symbol l2cap_credit_based_send_continue=0x0000b905
--define_symbol l2cap_disconnect=0x0000b981
--define_symbol l2cap_get_le_credit_based_connection_credits=0x0000bbd1
--define_symbol l2cap_get_peer_mtu_for_local_cid=0x0000bbed
--define_symbol l2cap_init=0x0000bfc1
--define_symbol l2cap_le_send_flow_control_credit=0x0000c0b7
--define_symbol l2cap_max_le_mtu=0x0000c3c1
--define_symbol l2cap_register_packet_handler=0x0000c4e9
--define_symbol l2cap_register_service=0x0000c4f5
--define_symbol l2cap_request_can_send_now_event=0x0000c605
--define_symbol l2cap_request_connection_parameter_update=0x0000c61f
--define_symbol l2cap_send_echo_request=0x0000caf1
--define_symbol l2cap_unregister_service=0x0000cbb1
--define_symbol le_device_db_add=0x0000cc09
--define_symbol le_device_db_find=0x0000ccdd
--define_symbol le_device_db_from_key=0x0000cd09
--define_symbol le_device_db_iter_cur=0x0000cd11
--define_symbol le_device_db_iter_cur_key=0x0000cd15
--define_symbol le_device_db_iter_init=0x0000cd19
--define_symbol le_device_db_iter_next=0x0000cd21
--define_symbol le_device_db_remove_key=0x0000cd47
--define_symbol ll_ackable_packet_alloc=0x0000cd73
--define_symbol ll_ackable_packet_get_status=0x0000ce7b
--define_symbol ll_ackable_packet_run=0x0000ceed
--define_symbol ll_ackable_packet_set_tx_data=0x0000cf95
--define_symbol ll_aes_encrypt=0x0000cfb1
--define_symbol ll_attach_cte_to_adv_set=0x0000d02d
--define_symbol ll_config=0x0000d1c5
--define_symbol ll_free=0x0000d1d5
--define_symbol ll_get_heap_free_size=0x0000d1e1
--define_symbol ll_hint_on_ce_len=0x0000d1f1
--define_symbol ll_legacy_adv_set_interval=0x0000d229
--define_symbol ll_lock_frequency=0x0000d239
--define_symbol ll_malloc=0x0000d291
--define_symbol ll_query_timing_info=0x0000d3c9
--define_symbol ll_raw_packet_alloc=0x0000d415
--define_symbol ll_raw_packet_free=0x0000d4e9
--define_symbol ll_raw_packet_get_bare_rx_data=0x0000d513
--define_symbol ll_raw_packet_get_iq_samples=0x0000d5d9
--define_symbol ll_raw_packet_get_rx_data=0x0000d673
--define_symbol ll_raw_packet_recv=0x0000d715
--define_symbol ll_raw_packet_send=0x0000d7d1
--define_symbol ll_raw_packet_set_bare_data=0x0000d8b9
--define_symbol ll_raw_packet_set_bare_mode=0x0000d8f7
--define_symbol ll_raw_packet_set_fake_cte_info=0x0000d9fd
--define_symbol ll_raw_packet_set_param=0x0000da1f
--define_symbol ll_raw_packet_set_rx_cte=0x0000da7d
--define_symbol ll_raw_packet_set_tx_cte=0x0000db13
--define_symbol ll_raw_packet_set_tx_data=0x0000db51
--define_symbol ll_scan_set_fixed_channel=0x0000dc0d
--define_symbol ll_scanner_enable_iq_sampling=0x0000dc19
--define_symbol ll_set_adv_access_address=0x0000dead
--define_symbol ll_set_adv_coded_scheme=0x0000deb9
--define_symbol ll_set_conn_coded_scheme=0x0000dee9
--define_symbol ll_set_conn_interval_unit=0x0000df15
--define_symbol ll_set_conn_latency=0x0000df21
--define_symbol ll_set_conn_tx_power=0x0000df51
--define_symbol ll_set_def_antenna=0x0000df99
--define_symbol ll_set_initiating_coded_scheme=0x0000dfb5
--define_symbol ll_set_max_conn_number=0x0000dfc1
--define_symbol ll_unlock_frequency=0x0000e05d
--define_symbol nibble_for_char=0x0001f05d
--define_symbol platform_32k_rc_auto_tune=0x0001f0f9
--define_symbol platform_32k_rc_tune=0x0001f175
--define_symbol platform_calibrate_32k=0x0001f189
--define_symbol platform_config=0x0001f18d
--define_symbol platform_controller_run=0x0001f2b1
--define_symbol platform_enable_irq=0x0001f2e9
--define_symbol platform_get_gen_os_driver=0x0001f321
--define_symbol platform_get_task_handle=0x0001f32d
--define_symbol platform_get_us_time=0x0001f345
--define_symbol platform_get_version=0x0001f349
--define_symbol platform_hrng=0x0001f351
--define_symbol platform_init_controller=0x0001f359
--define_symbol platform_os_idle_resumed_hook=0x0001f375
--define_symbol platform_patch_rf_init_data=0x0001f379
--define_symbol platform_post_sleep_processing=0x0001f385
--define_symbol platform_pre_sleep_processing=0x0001f38b
--define_symbol platform_pre_suppress_ticks_and_sleep_processing=0x0001f391
--define_symbol platform_printf=0x0001f395
--define_symbol platform_raise_assertion=0x0001f3a9
--define_symbol platform_rand=0x0001f3bd
--define_symbol platform_read_info=0x0001f3c1
--define_symbol platform_read_persistent_reg=0x0001f3f1
--define_symbol platform_reset=0x0001f401
--define_symbol platform_set_evt_callback=0x0001f425
--define_symbol platform_set_evt_callback_table=0x0001f439
--define_symbol platform_set_irq_callback=0x0001f445
--define_symbol platform_set_irq_callback_table=0x0001f461
--define_symbol platform_set_rf_clk_source=0x0001f46d
--define_symbol platform_set_rf_init_data=0x0001f479
--define_symbol platform_set_rf_power_mapping=0x0001f485
--define_symbol platform_set_timer=0x0001f491
--define_symbol platform_shutdown=0x0001f495
--define_symbol platform_switch_app=0x0001f499
--define_symbol platform_trace_raw=0x0001f4c5
--define_symbol platform_write_persistent_reg=0x0001f4dd
--define_symbol printf_hexdump=0x0001f4ed
--define_symbol reverse_128=0x0001f861
--define_symbol reverse_24=0x0001f867
--define_symbol reverse_48=0x0001f86d
--define_symbol reverse_56=0x0001f873
--define_symbol reverse_64=0x0001f879
--define_symbol reverse_bd_addr=0x0001f87f
--define_symbol reverse_bytes=0x0001f885
--define_symbol sm_add_event_handler=0x0001fb65
--define_symbol sm_address_resolution_lookup=0x0001fcbd
--define_symbol sm_authenticated=0x0002001d
--define_symbol sm_authorization_decline=0x0002002b
--define_symbol sm_authorization_grant=0x0002004b
--define_symbol sm_authorization_state=0x0002006b
--define_symbol sm_bonding_decline=0x00020085
--define_symbol sm_config=0x000204a5
--define_symbol sm_config_conn=0x000204bd
--define_symbol sm_encryption_key_size=0x00020673
--define_symbol sm_just_works_confirm=0x00020bad
--define_symbol sm_le_device_key=0x00020ee9
--define_symbol sm_passkey_input=0x00020f7f
--define_symbol sm_private_random_address_generation_get=0x0002132d
--define_symbol sm_private_random_address_generation_get_mode=0x00021335
--define_symbol sm_private_random_address_generation_set_mode=0x00021341
--define_symbol sm_private_random_address_generation_set_update_period=0x00021369
--define_symbol sm_register_oob_data_callback=0x000214a5
--define_symbol sm_request_pairing=0x000214b1
--define_symbol sm_send_security_request=0x00021eeb
--define_symbol sm_set_accepted_stk_generation_methods=0x00021f11
--define_symbol sm_set_authentication_requirements=0x00021f1d
--define_symbol sm_set_encryption_key_size_range=0x00021f29
--define_symbol sscanf_bd_addr=0x000222f9
--define_symbol sysSetPublicDeviceAddr=0x000226ad
--define_symbol uuid128_to_str=0x00022e25
--define_symbol uuid_add_bluetooth_prefix=0x00022e7d
--define_symbol uuid_has_bluetooth_prefix=0x00022e9d
