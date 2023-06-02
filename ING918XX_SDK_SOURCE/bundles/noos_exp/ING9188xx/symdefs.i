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
--define_symbol char_for_nibble=0x00006a1f
--define_symbol gap_add_dev_to_periodic_list=0x00007351
--define_symbol gap_add_whitelist=0x00007361
--define_symbol gap_aes_encrypt=0x0000736d
--define_symbol gap_clear_white_lists=0x000073b1
--define_symbol gap_clr_adv_set=0x000073bd
--define_symbol gap_clr_periodic_adv_list=0x000073c9
--define_symbol gap_create_connection_cancel=0x000073d5
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x000073e1
--define_symbol gap_disconnect=0x000073f9
--define_symbol gap_disconnect_all=0x00007425
--define_symbol gap_ext_create_connection=0x00007465
--define_symbol gap_get_connection_parameter_range=0x00007571
--define_symbol gap_le_read_channel_map=0x000075ad
--define_symbol gap_periodic_adv_create_sync=0x00007619
--define_symbol gap_periodic_adv_create_sync_cancel=0x0000763d
--define_symbol gap_periodic_adv_set_info_transfer=0x00007649
--define_symbol gap_periodic_adv_sync_transfer=0x00007659
--define_symbol gap_periodic_adv_sync_transfer_param=0x00007669
--define_symbol gap_periodic_adv_term_sync=0x00007685
--define_symbol gap_read_antenna_info=0x0000770d
--define_symbol gap_read_local_tx_power_level=0x00007725
--define_symbol gap_read_periodic_adv_list_size=0x00007735
--define_symbol gap_read_phy=0x00007741
--define_symbol gap_read_remote_tx_power_level=0x0000774d
--define_symbol gap_read_remote_used_features=0x0000775d
--define_symbol gap_read_remote_version=0x00007769
--define_symbol gap_read_rssi=0x00007775
--define_symbol gap_remove_whitelist=0x00007781
--define_symbol gap_rmv_adv_set=0x000077fd
--define_symbol gap_rmv_dev_from_periodic_list=0x00007809
--define_symbol gap_rx_test_v2=0x00007819
--define_symbol gap_rx_test_v3=0x00007829
--define_symbol gap_set_adv_set_random_addr=0x00007875
--define_symbol gap_set_connection_cte_request_enable=0x000078bd
--define_symbol gap_set_connection_cte_response_enable=0x000078d9
--define_symbol gap_set_connection_cte_rx_param=0x000078e9
--define_symbol gap_set_connection_cte_tx_param=0x00007945
--define_symbol gap_set_connection_parameter_range=0x00007999
--define_symbol gap_set_connectionless_cte_tx_enable=0x000079b1
--define_symbol gap_set_connectionless_cte_tx_param=0x000079c1
--define_symbol gap_set_connectionless_iq_sampling_enable=0x00007a21
--define_symbol gap_set_data_length=0x00007a85
--define_symbol gap_set_def_phy=0x00007a9d
--define_symbol gap_set_default_subrate=0x00007aad
--define_symbol gap_set_ext_adv_data=0x00007ac9
--define_symbol gap_set_ext_adv_enable=0x00007ae1
--define_symbol gap_set_ext_adv_para=0x00007b5d
--define_symbol gap_set_ext_scan_enable=0x00007c35
--define_symbol gap_set_ext_scan_para=0x00007c4d
--define_symbol gap_set_ext_scan_response_data=0x00007cf5
--define_symbol gap_set_host_channel_classification=0x00007d0d
--define_symbol gap_set_path_loss_reporting_enable=0x00007d1d
--define_symbol gap_set_path_loss_reporting_param=0x00007d2d
--define_symbol gap_set_periodic_adv_data=0x00007d49
--define_symbol gap_set_periodic_adv_enable=0x00007db9
--define_symbol gap_set_periodic_adv_para=0x00007dc9
--define_symbol gap_set_periodic_adv_rx_enable=0x00007de1
--define_symbol gap_set_phy=0x00007df1
--define_symbol gap_set_random_device_address=0x00007e0d
--define_symbol gap_set_tx_power_reporting_enable=0x00007e2d
--define_symbol gap_start_ccm=0x00007e4d
--define_symbol gap_subrate_request=0x00007ea1
--define_symbol gap_test_end=0x00007ebd
--define_symbol gap_tx_test_v2=0x00007ec9
--define_symbol gap_tx_test_v4=0x00007ee1
--define_symbol gap_update_connection_parameters=0x00007f05
--define_symbol gap_vendor_tx_continuous_wave=0x00007f49
--define_symbol gatt_client_cancel_write=0x00008471
--define_symbol gatt_client_discover_characteristic_descriptors=0x00008497
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x000084d7
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008527
--define_symbol gatt_client_discover_characteristics_for_service=0x00008577
--define_symbol gatt_client_discover_primary_services=0x000085ad
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x000085df
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008623
--define_symbol gatt_client_execute_write=0x0000865f
--define_symbol gatt_client_find_included_services_for_service=0x00008685
--define_symbol gatt_client_get_mtu=0x000086b3
--define_symbol gatt_client_is_ready=0x00008755
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x0000876b
--define_symbol gatt_client_prepare_write=0x0000878d
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x000087c9
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x000087f3
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x000087f9
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008827
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x0000882d
--define_symbol gatt_client_read_multiple_characteristic_values=0x0000885b
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x0000888b
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x000088b9
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008905
--define_symbol gatt_client_register_handler=0x00008951
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x0000895d
--define_symbol gatt_client_signed_write_without_response=0x00008d8d
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008e51
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008e8b
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008edd
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008eed
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008f29
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008f39
--define_symbol gatt_client_write_value_of_characteristic=0x00008f75
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008fab
--define_symbol hci_add_event_handler=0x0000a551
--define_symbol hci_power_control=0x0000ad59
--define_symbol hci_register_acl_packet_handler=0x0000af0d
--define_symbol kv_commit=0x0000b4a5
--define_symbol kv_get=0x0000b4fd
--define_symbol kv_init=0x0000b515
--define_symbol kv_put=0x0000b57d
--define_symbol kv_remove=0x0000b5f5
--define_symbol kv_remove_all=0x0000b631
--define_symbol kv_value_modified=0x0000b675
--define_symbol kv_visit=0x0000b679
--define_symbol l2cap_add_event_handler=0x0000b72d
--define_symbol l2cap_can_send_packet_now=0x0000b73d
--define_symbol l2cap_create_le_credit_based_connection_request=0x0000b8f9
--define_symbol l2cap_credit_based_send=0x0000ba3d
--define_symbol l2cap_credit_based_send_continue=0x0000ba69
--define_symbol l2cap_disconnect=0x0000bae5
--define_symbol l2cap_get_le_credit_based_connection_credits=0x0000bd35
--define_symbol l2cap_get_peer_mtu_for_local_cid=0x0000bd51
--define_symbol l2cap_init=0x0000c125
--define_symbol l2cap_le_send_flow_control_credit=0x0000c21b
--define_symbol l2cap_max_le_mtu=0x0000c525
--define_symbol l2cap_register_packet_handler=0x0000c64d
--define_symbol l2cap_register_service=0x0000c659
--define_symbol l2cap_request_can_send_now_event=0x0000c769
--define_symbol l2cap_request_connection_parameter_update=0x0000c783
--define_symbol l2cap_send_echo_request=0x0000cc55
--define_symbol l2cap_unregister_service=0x0000cd15
--define_symbol le_device_db_add=0x0000cd6d
--define_symbol le_device_db_find=0x0000ce41
--define_symbol le_device_db_from_key=0x0000ce6d
--define_symbol le_device_db_iter_cur=0x0000ce75
--define_symbol le_device_db_iter_cur_key=0x0000ce79
--define_symbol le_device_db_iter_init=0x0000ce7d
--define_symbol le_device_db_iter_next=0x0000ce85
--define_symbol le_device_db_remove_key=0x0000ceab
--define_symbol ll_ackable_packet_alloc=0x0000ced7
--define_symbol ll_ackable_packet_get_status=0x0000cfdf
--define_symbol ll_ackable_packet_run=0x0000d051
--define_symbol ll_ackable_packet_set_tx_data=0x0000d109
--define_symbol ll_adjust_conn_peer_tx_power=0x0000d131
--define_symbol ll_aes_encrypt=0x0000d15d
--define_symbol ll_config=0x0000d1d9
--define_symbol ll_dhkey_generated=0x0000d405
--define_symbol ll_free=0x0000d435
--define_symbol ll_get_conn_events_info=0x0000d441
--define_symbol ll_get_conn_info=0x0000d51d
--define_symbol ll_get_heap_free_size=0x0000d55d
--define_symbol ll_hint_on_ce_len=0x0000d56d
--define_symbol ll_install_ecc_engine=0x0000d5a5
--define_symbol ll_legacy_adv_set_interval=0x0000d5b1
--define_symbol ll_lock_frequency=0x0000d5c1
--define_symbol ll_malloc=0x0000d619
--define_symbol ll_p256_key_pair_generated=0x0000d621
--define_symbol ll_raw_packet_alloc=0x0000d7d1
--define_symbol ll_raw_packet_free=0x0000d8a5
--define_symbol ll_raw_packet_get_bare_rx_data=0x0000d8cf
--define_symbol ll_raw_packet_get_iq_samples=0x0000d995
--define_symbol ll_raw_packet_get_rx_data=0x0000da2f
--define_symbol ll_raw_packet_recv=0x0000dad1
--define_symbol ll_raw_packet_send=0x0000db8d
--define_symbol ll_raw_packet_set_bare_data=0x0000dc75
--define_symbol ll_raw_packet_set_bare_mode=0x0000dcb3
--define_symbol ll_raw_packet_set_fake_cte_info=0x0000ddb9
--define_symbol ll_raw_packet_set_param=0x0000dddb
--define_symbol ll_raw_packet_set_rx_cte=0x0000de39
--define_symbol ll_raw_packet_set_tx_cte=0x0000decf
--define_symbol ll_raw_packet_set_tx_data=0x0000df0d
--define_symbol ll_scan_set_fixed_channel=0x0000dfc9
--define_symbol ll_scanner_enable_iq_sampling=0x0000dfd5
--define_symbol ll_set_adv_access_address=0x0000e269
--define_symbol ll_set_adv_coded_scheme=0x0000e275
--define_symbol ll_set_conn_coded_scheme=0x0000e2a5
--define_symbol ll_set_conn_interval_unit=0x0000e2d1
--define_symbol ll_set_conn_latency=0x0000e2dd
--define_symbol ll_set_conn_tx_power=0x0000e30d
--define_symbol ll_set_def_antenna=0x0000e349
--define_symbol ll_set_initiating_coded_scheme=0x0000e365
--define_symbol ll_set_max_conn_number=0x0000e371
--define_symbol ll_set_tx_power_range=0x0000e40d
--define_symbol ll_unlock_frequency=0x0000e435
--define_symbol nibble_for_char=0x00020a31
--define_symbol platform_32k_rc_auto_tune=0x00020acd
--define_symbol platform_32k_rc_tune=0x00020b49
--define_symbol platform_calibrate_32k=0x00020b5d
--define_symbol platform_config=0x00020b61
--define_symbol platform_controller_run=0x00020c85
--define_symbol platform_enable_irq=0x00020cbd
--define_symbol platform_get_gen_os_driver=0x00020cf5
--define_symbol platform_get_task_handle=0x00020d01
--define_symbol platform_get_us_time=0x00020d19
--define_symbol platform_get_version=0x00020d1d
--define_symbol platform_hrng=0x00020d25
--define_symbol platform_init_controller=0x00020d2d
--define_symbol platform_os_idle_resumed_hook=0x00020d49
--define_symbol platform_patch_rf_init_data=0x00020d4d
--define_symbol platform_post_sleep_processing=0x00020d59
--define_symbol platform_pre_sleep_processing=0x00020d5f
--define_symbol platform_pre_suppress_ticks_and_sleep_processing=0x00020d65
--define_symbol platform_printf=0x00020d69
--define_symbol platform_raise_assertion=0x00020d7d
--define_symbol platform_rand=0x00020d91
--define_symbol platform_read_info=0x00020d95
--define_symbol platform_read_persistent_reg=0x00020dc5
--define_symbol platform_reset=0x00020dd5
--define_symbol platform_set_evt_callback=0x00020df9
--define_symbol platform_set_evt_callback_table=0x00020e0d
--define_symbol platform_set_irq_callback=0x00020e19
--define_symbol platform_set_irq_callback_table=0x00020e35
--define_symbol platform_set_rf_clk_source=0x00020e41
--define_symbol platform_set_rf_init_data=0x00020e4d
--define_symbol platform_set_rf_power_mapping=0x00020e59
--define_symbol platform_set_timer=0x00020e65
--define_symbol platform_shutdown=0x00020e69
--define_symbol platform_switch_app=0x00020e6d
--define_symbol platform_trace_raw=0x00020e99
--define_symbol platform_write_persistent_reg=0x00020eb1
--define_symbol printf_hexdump=0x00020ec1
--define_symbol reverse_128=0x00021235
--define_symbol reverse_24=0x0002123b
--define_symbol reverse_48=0x00021241
--define_symbol reverse_56=0x00021247
--define_symbol reverse_64=0x0002124d
--define_symbol reverse_bd_addr=0x00021253
--define_symbol reverse_bytes=0x00021259
--define_symbol sm_add_event_handler=0x00021559
--define_symbol sm_address_resolution_lookup=0x000216b1
--define_symbol sm_authenticated=0x00021a11
--define_symbol sm_authorization_decline=0x00021a1f
--define_symbol sm_authorization_grant=0x00021a3f
--define_symbol sm_authorization_state=0x00021a5f
--define_symbol sm_bonding_decline=0x00021a79
--define_symbol sm_config=0x00021e99
--define_symbol sm_config_conn=0x00021eb1
--define_symbol sm_encryption_key_size=0x00022067
--define_symbol sm_just_works_confirm=0x000225a1
--define_symbol sm_le_device_key=0x000228dd
--define_symbol sm_passkey_input=0x00022973
--define_symbol sm_private_random_address_generation_get=0x00022d21
--define_symbol sm_private_random_address_generation_get_mode=0x00022d29
--define_symbol sm_private_random_address_generation_set_mode=0x00022d35
--define_symbol sm_private_random_address_generation_set_update_period=0x00022d5d
--define_symbol sm_register_oob_data_callback=0x00022e99
--define_symbol sm_request_pairing=0x00022ea5
--define_symbol sm_send_security_request=0x000238df
--define_symbol sm_set_accepted_stk_generation_methods=0x00023905
--define_symbol sm_set_authentication_requirements=0x00023911
--define_symbol sm_set_encryption_key_size_range=0x0002391d
--define_symbol sscanf_bd_addr=0x00023ced
--define_symbol sysSetPublicDeviceAddr=0x000240a1
--define_symbol uuid128_to_str=0x00024841
--define_symbol uuid_add_bluetooth_prefix=0x00024899
--define_symbol uuid_has_bluetooth_prefix=0x000248b9
