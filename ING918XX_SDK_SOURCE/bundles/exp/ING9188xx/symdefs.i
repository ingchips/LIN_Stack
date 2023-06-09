--define_symbol att_dispatch_client_can_send_now=0x00005875
--define_symbol att_dispatch_client_request_can_send_now_event=0x0000587b
--define_symbol att_dispatch_register_client=0x00005881
--define_symbol att_dispatch_register_server=0x00005895
--define_symbol att_dispatch_server_can_send_now=0x000058a9
--define_symbol att_dispatch_server_request_can_send_now_event=0x000058af
--define_symbol att_emit_general_event=0x00005961
--define_symbol att_server_can_send_packet_now=0x00006075
--define_symbol att_server_deferred_read_response=0x00006079
--define_symbol att_server_get_mtu=0x00006091
--define_symbol att_server_indicate=0x00006109
--define_symbol att_server_init=0x0000618d
--define_symbol att_server_notify=0x000061c9
--define_symbol att_server_register_packet_handler=0x000062e1
--define_symbol att_server_request_can_send_now_event=0x000062ed
--define_symbol att_set_db=0x00006309
--define_symbol att_set_read_callback=0x0000631d
--define_symbol att_set_write_callback=0x00006329
--define_symbol bd_addr_cmp=0x00006499
--define_symbol bd_addr_copy=0x0000649f
--define_symbol bd_addr_to_str=0x000064a9
--define_symbol big_endian_read_16=0x000064e1
--define_symbol big_endian_read_32=0x000064e9
--define_symbol big_endian_store_16=0x000064fd
--define_symbol big_endian_store_32=0x00006509
--define_symbol btstack_config=0x0000665d
--define_symbol btstack_memory_pool_create=0x0000679b
--define_symbol btstack_memory_pool_free=0x000067c5
--define_symbol btstack_memory_pool_get=0x00006825
--define_symbol btstack_push_user_msg=0x0000688d
--define_symbol btstack_push_user_runnable=0x00006899
--define_symbol char_for_nibble=0x00006b57
--define_symbol eTaskConfirmSleepModeStatus=0x00006e25
--define_symbol gap_add_dev_to_periodic_list=0x000074c1
--define_symbol gap_add_whitelist=0x000074d1
--define_symbol gap_aes_encrypt=0x000074dd
--define_symbol gap_clear_white_lists=0x00007521
--define_symbol gap_clr_adv_set=0x0000752d
--define_symbol gap_clr_periodic_adv_list=0x00007539
--define_symbol gap_create_connection_cancel=0x00007545
--define_symbol gap_default_periodic_adv_sync_transfer_param=0x00007551
--define_symbol gap_disconnect=0x00007569
--define_symbol gap_disconnect_all=0x00007595
--define_symbol gap_ext_create_connection=0x000075d5
--define_symbol gap_get_connection_parameter_range=0x000076e1
--define_symbol gap_le_read_channel_map=0x0000771d
--define_symbol gap_periodic_adv_create_sync=0x00007789
--define_symbol gap_periodic_adv_create_sync_cancel=0x000077ad
--define_symbol gap_periodic_adv_set_info_transfer=0x000077b9
--define_symbol gap_periodic_adv_sync_transfer=0x000077c9
--define_symbol gap_periodic_adv_sync_transfer_param=0x000077d9
--define_symbol gap_periodic_adv_term_sync=0x000077f5
--define_symbol gap_read_antenna_info=0x0000787d
--define_symbol gap_read_local_tx_power_level=0x00007895
--define_symbol gap_read_periodic_adv_list_size=0x000078a5
--define_symbol gap_read_phy=0x000078b1
--define_symbol gap_read_remote_tx_power_level=0x000078bd
--define_symbol gap_read_remote_used_features=0x000078cd
--define_symbol gap_read_remote_version=0x000078d9
--define_symbol gap_read_rssi=0x000078e5
--define_symbol gap_remove_whitelist=0x000078f1
--define_symbol gap_rmv_adv_set=0x0000796d
--define_symbol gap_rmv_dev_from_periodic_list=0x00007979
--define_symbol gap_rx_test_v2=0x00007989
--define_symbol gap_rx_test_v3=0x00007999
--define_symbol gap_set_adv_set_random_addr=0x000079e5
--define_symbol gap_set_connection_cte_request_enable=0x00007a2d
--define_symbol gap_set_connection_cte_response_enable=0x00007a49
--define_symbol gap_set_connection_cte_rx_param=0x00007a59
--define_symbol gap_set_connection_cte_tx_param=0x00007ab5
--define_symbol gap_set_connection_parameter_range=0x00007b09
--define_symbol gap_set_connectionless_cte_tx_enable=0x00007b21
--define_symbol gap_set_connectionless_cte_tx_param=0x00007b31
--define_symbol gap_set_connectionless_iq_sampling_enable=0x00007b91
--define_symbol gap_set_data_length=0x00007bf5
--define_symbol gap_set_def_phy=0x00007c0d
--define_symbol gap_set_default_subrate=0x00007c1d
--define_symbol gap_set_ext_adv_data=0x00007c39
--define_symbol gap_set_ext_adv_enable=0x00007c51
--define_symbol gap_set_ext_adv_para=0x00007ccd
--define_symbol gap_set_ext_scan_enable=0x00007da5
--define_symbol gap_set_ext_scan_para=0x00007dbd
--define_symbol gap_set_ext_scan_response_data=0x00007e65
--define_symbol gap_set_host_channel_classification=0x00007e7d
--define_symbol gap_set_path_loss_reporting_enable=0x00007e8d
--define_symbol gap_set_path_loss_reporting_param=0x00007e9d
--define_symbol gap_set_periodic_adv_data=0x00007eb9
--define_symbol gap_set_periodic_adv_enable=0x00007f29
--define_symbol gap_set_periodic_adv_para=0x00007f39
--define_symbol gap_set_periodic_adv_rx_enable=0x00007f51
--define_symbol gap_set_phy=0x00007f61
--define_symbol gap_set_random_device_address=0x00007f7d
--define_symbol gap_set_tx_power_reporting_enable=0x00007f9d
--define_symbol gap_start_ccm=0x00007fbd
--define_symbol gap_subrate_request=0x00008011
--define_symbol gap_test_end=0x0000802d
--define_symbol gap_tx_test_v2=0x00008039
--define_symbol gap_tx_test_v4=0x00008051
--define_symbol gap_update_connection_parameters=0x00008075
--define_symbol gap_vendor_tx_continuous_wave=0x000080b9
--define_symbol gatt_client_cancel_write=0x000085e1
--define_symbol gatt_client_discover_characteristic_descriptors=0x00008607
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x00008647
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x00008697
--define_symbol gatt_client_discover_characteristics_for_service=0x000086e7
--define_symbol gatt_client_discover_primary_services=0x0000871d
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x0000874f
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x00008793
--define_symbol gatt_client_execute_write=0x000087cf
--define_symbol gatt_client_find_included_services_for_service=0x000087f5
--define_symbol gatt_client_get_mtu=0x00008823
--define_symbol gatt_client_is_ready=0x000088c5
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x000088db
--define_symbol gatt_client_prepare_write=0x000088fd
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x00008939
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008963
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008969
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x00008997
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x0000899d
--define_symbol gatt_client_read_multiple_characteristic_values=0x000089cb
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x000089fb
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x00008a29
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x00008a75
--define_symbol gatt_client_register_handler=0x00008ac1
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008acd
--define_symbol gatt_client_signed_write_without_response=0x00008efd
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008fc1
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008ffb
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x0000904d
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x0000905d
--define_symbol gatt_client_write_long_value_of_characteristic=0x00009099
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x000090a9
--define_symbol gatt_client_write_value_of_characteristic=0x000090e5
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x0000911b
--define_symbol hci_add_event_handler=0x0000a6c1
--define_symbol hci_power_control=0x0000aec9
--define_symbol hci_register_acl_packet_handler=0x0000b07d
--define_symbol kv_commit=0x0000b5f1
--define_symbol kv_get=0x0000b649
--define_symbol kv_init=0x0000b661
--define_symbol kv_put=0x0000b6c9
--define_symbol kv_remove=0x0000b741
--define_symbol kv_remove_all=0x0000b77d
--define_symbol kv_value_modified=0x0000b7c1
--define_symbol kv_visit=0x0000b7c5
--define_symbol l2cap_add_event_handler=0x0000b879
--define_symbol l2cap_can_send_packet_now=0x0000b889
--define_symbol l2cap_create_le_credit_based_connection_request=0x0000ba45
--define_symbol l2cap_credit_based_send=0x0000bb89
--define_symbol l2cap_credit_based_send_continue=0x0000bbb5
--define_symbol l2cap_disconnect=0x0000bc31
--define_symbol l2cap_get_le_credit_based_connection_credits=0x0000be81
--define_symbol l2cap_get_peer_mtu_for_local_cid=0x0000be9d
--define_symbol l2cap_init=0x0000c271
--define_symbol l2cap_le_send_flow_control_credit=0x0000c367
--define_symbol l2cap_max_le_mtu=0x0000c671
--define_symbol l2cap_register_packet_handler=0x0000c799
--define_symbol l2cap_register_service=0x0000c7a5
--define_symbol l2cap_request_can_send_now_event=0x0000c8b5
--define_symbol l2cap_request_connection_parameter_update=0x0000c8cf
--define_symbol l2cap_send_echo_request=0x0000cda1
--define_symbol l2cap_unregister_service=0x0000ce61
--define_symbol le_device_db_add=0x0000ceb9
--define_symbol le_device_db_find=0x0000cf8d
--define_symbol le_device_db_from_key=0x0000cfb9
--define_symbol le_device_db_iter_cur=0x0000cfc1
--define_symbol le_device_db_iter_cur_key=0x0000cfc5
--define_symbol le_device_db_iter_init=0x0000cfc9
--define_symbol le_device_db_iter_next=0x0000cfd1
--define_symbol le_device_db_remove_key=0x0000cff7
--define_symbol ll_ackable_packet_alloc=0x0000d023
--define_symbol ll_ackable_packet_get_status=0x0000d12b
--define_symbol ll_ackable_packet_run=0x0000d19d
--define_symbol ll_ackable_packet_set_tx_data=0x0000d255
--define_symbol ll_adjust_conn_peer_tx_power=0x0000d27d
--define_symbol ll_aes_encrypt=0x0000d2a9
--define_symbol ll_config=0x0000d325
--define_symbol ll_dhkey_generated=0x0000d551
--define_symbol ll_free=0x0000d581
--define_symbol ll_get_conn_events_info=0x0000d58d
--define_symbol ll_get_conn_info=0x0000d669
--define_symbol ll_get_heap_free_size=0x0000d6a9
--define_symbol ll_hint_on_ce_len=0x0000d6b9
--define_symbol ll_install_ecc_engine=0x0000d6f1
--define_symbol ll_legacy_adv_set_interval=0x0000d6fd
--define_symbol ll_lock_frequency=0x0000d70d
--define_symbol ll_malloc=0x0000d765
--define_symbol ll_p256_key_pair_generated=0x0000d76d
--define_symbol ll_raw_packet_alloc=0x0000d91d
--define_symbol ll_raw_packet_free=0x0000d9f1
--define_symbol ll_raw_packet_get_bare_rx_data=0x0000da1b
--define_symbol ll_raw_packet_get_iq_samples=0x0000dae1
--define_symbol ll_raw_packet_get_rx_data=0x0000db7b
--define_symbol ll_raw_packet_recv=0x0000dc1d
--define_symbol ll_raw_packet_send=0x0000dcd9
--define_symbol ll_raw_packet_set_bare_data=0x0000ddc1
--define_symbol ll_raw_packet_set_bare_mode=0x0000ddff
--define_symbol ll_raw_packet_set_fake_cte_info=0x0000df05
--define_symbol ll_raw_packet_set_param=0x0000df27
--define_symbol ll_raw_packet_set_rx_cte=0x0000df85
--define_symbol ll_raw_packet_set_tx_cte=0x0000e01b
--define_symbol ll_raw_packet_set_tx_data=0x0000e059
--define_symbol ll_scan_set_fixed_channel=0x0000e115
--define_symbol ll_scanner_enable_iq_sampling=0x0000e121
--define_symbol ll_set_adv_access_address=0x0000e3b5
--define_symbol ll_set_adv_coded_scheme=0x0000e3c1
--define_symbol ll_set_conn_coded_scheme=0x0000e3f1
--define_symbol ll_set_conn_interval_unit=0x0000e41d
--define_symbol ll_set_conn_latency=0x0000e429
--define_symbol ll_set_conn_tx_power=0x0000e459
--define_symbol ll_set_def_antenna=0x0000e495
--define_symbol ll_set_initiating_coded_scheme=0x0000e4b1
--define_symbol ll_set_max_conn_number=0x0000e4bd
--define_symbol ll_set_tx_power_range=0x0000e559
--define_symbol ll_unlock_frequency=0x0000e581
--define_symbol nibble_for_char=0x00020ba9
--define_symbol platform_32k_rc_auto_tune=0x00020c59
--define_symbol platform_32k_rc_tune=0x00020cd5
--define_symbol platform_calibrate_32k=0x00020ce9
--define_symbol platform_config=0x00020ced
--define_symbol platform_enable_irq=0x00020e15
--define_symbol platform_get_current_task=0x00020e4d
--define_symbol platform_get_gen_os_driver=0x00020e71
--define_symbol platform_get_heap_status=0x00020e79
--define_symbol platform_get_task_handle=0x00020e91
--define_symbol platform_get_us_time=0x00020eb1
--define_symbol platform_get_version=0x00020eb5
--define_symbol platform_hrng=0x00020ebd
--define_symbol platform_install_isr_stack=0x00020ec5
--define_symbol platform_install_task_stack=0x00020ed1
--define_symbol platform_patch_rf_init_data=0x00020f09
--define_symbol platform_printf=0x00020f15
--define_symbol platform_raise_assertion=0x00020f29
--define_symbol platform_rand=0x00020f3d
--define_symbol platform_read_info=0x00020f41
--define_symbol platform_read_persistent_reg=0x00020f71
--define_symbol platform_reset=0x00020f81
--define_symbol platform_set_evt_callback=0x00020fa5
--define_symbol platform_set_evt_callback_table=0x00020fb9
--define_symbol platform_set_irq_callback=0x00020fc5
--define_symbol platform_set_irq_callback_table=0x00020fe1
--define_symbol platform_set_rf_clk_source=0x00020fed
--define_symbol platform_set_rf_init_data=0x00020ff9
--define_symbol platform_set_rf_power_mapping=0x00021005
--define_symbol platform_set_timer=0x00021011
--define_symbol platform_shutdown=0x00021015
--define_symbol platform_switch_app=0x00021019
--define_symbol platform_trace_raw=0x00021045
--define_symbol platform_write_persistent_reg=0x0002105d
--define_symbol printf_hexdump=0x00021211
--define_symbol pvPortMalloc=0x00021d01
--define_symbol pvTaskIncrementMutexHeldCount=0x00021de9
--define_symbol pvTimerGetTimerID=0x00021e01
--define_symbol pxPortInitialiseStack=0x00021e2d
--define_symbol reverse_128=0x0002200d
--define_symbol reverse_24=0x00022013
--define_symbol reverse_48=0x00022019
--define_symbol reverse_56=0x0002201f
--define_symbol reverse_64=0x00022025
--define_symbol reverse_bd_addr=0x0002202b
--define_symbol reverse_bytes=0x00022031
--define_symbol sm_add_event_handler=0x00022331
--define_symbol sm_address_resolution_lookup=0x00022489
--define_symbol sm_authenticated=0x000227e9
--define_symbol sm_authorization_decline=0x000227f7
--define_symbol sm_authorization_grant=0x00022817
--define_symbol sm_authorization_state=0x00022837
--define_symbol sm_bonding_decline=0x00022851
--define_symbol sm_config=0x00022c71
--define_symbol sm_config_conn=0x00022c89
--define_symbol sm_encryption_key_size=0x00022e3f
--define_symbol sm_just_works_confirm=0x00023379
--define_symbol sm_le_device_key=0x000236b5
--define_symbol sm_passkey_input=0x0002374b
--define_symbol sm_private_random_address_generation_get=0x00023af9
--define_symbol sm_private_random_address_generation_get_mode=0x00023b01
--define_symbol sm_private_random_address_generation_set_mode=0x00023b0d
--define_symbol sm_private_random_address_generation_set_update_period=0x00023b35
--define_symbol sm_register_oob_data_callback=0x00023c71
--define_symbol sm_request_pairing=0x00023c7d
--define_symbol sm_send_security_request=0x000246b7
--define_symbol sm_set_accepted_stk_generation_methods=0x000246dd
--define_symbol sm_set_authentication_requirements=0x000246e9
--define_symbol sm_set_encryption_key_size_range=0x000246f5
--define_symbol sscanf_bd_addr=0x00024ac5
--define_symbol sysSetPublicDeviceAddr=0x00024e79
--define_symbol uuid128_to_str=0x00025615
--define_symbol uuid_add_bluetooth_prefix=0x0002566d
--define_symbol uuid_has_bluetooth_prefix=0x0002568d
--define_symbol uxListRemove=0x000256a9
--define_symbol uxQueueMessagesWaiting=0x000256d1
--define_symbol uxQueueMessagesWaitingFromISR=0x000256f9
--define_symbol uxQueueSpacesAvailable=0x00025715
--define_symbol uxTaskGetStackHighWaterMark=0x00025741
--define_symbol uxTaskPriorityGet=0x00025761
--define_symbol uxTaskPriorityGetFromISR=0x0002577d
--define_symbol vListInitialise=0x00025837
--define_symbol vListInitialiseItem=0x0002584d
--define_symbol vListInsert=0x00025853
--define_symbol vListInsertEnd=0x00025883
--define_symbol vPortEndScheduler=0x0002589d
--define_symbol vPortEnterCritical=0x000258c9
--define_symbol vPortExitCritical=0x0002590d
--define_symbol vPortFree=0x00025941
--define_symbol vPortSuppressTicksAndSleep=0x000259d5
--define_symbol vPortValidateInterruptPriority=0x00025afd
--define_symbol vQueueDelete=0x00025b59
--define_symbol vQueueWaitForMessageRestricted=0x00025b85
--define_symbol vTaskDelay=0x00025bcd
--define_symbol vTaskInternalSetTimeOutState=0x00025c19
--define_symbol vTaskMissedYield=0x00025c29
--define_symbol vTaskPlaceOnEventList=0x00025c35
--define_symbol vTaskPlaceOnEventListRestricted=0x00025c6d
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x00025cad
--define_symbol vTaskPrioritySet=0x00025d59
--define_symbol vTaskResume=0x00025e21
--define_symbol vTaskStartScheduler=0x00025ea5
--define_symbol vTaskStepTick=0x00025f35
--define_symbol vTaskSuspend=0x00025f65
--define_symbol vTaskSuspendAll=0x00026021
--define_symbol vTaskSwitchContext=0x00026031
--define_symbol xPortStartScheduler=0x000260d9
--define_symbol xQueueAddToSet=0x000261a1
--define_symbol xQueueCreateCountingSemaphore=0x000261c5
--define_symbol xQueueCreateCountingSemaphoreStatic=0x00026201
--define_symbol xQueueCreateMutex=0x00026245
--define_symbol xQueueCreateMutexStatic=0x0002625b
--define_symbol xQueueCreateSet=0x00026275
--define_symbol xQueueGenericCreate=0x0002627d
--define_symbol xQueueGenericCreateStatic=0x000262c9
--define_symbol xQueueGenericReset=0x00026331
--define_symbol xQueueGenericSend=0x000263bd
--define_symbol xQueueGenericSendFromISR=0x00026529
--define_symbol xQueueGiveFromISR=0x000265e9
--define_symbol xQueueGiveMutexRecursive=0x0002668d
--define_symbol xQueueIsQueueEmptyFromISR=0x000266cd
--define_symbol xQueueIsQueueFullFromISR=0x000266f1
--define_symbol xQueuePeek=0x00026719
--define_symbol xQueuePeekFromISR=0x00026841
--define_symbol xQueueReceive=0x000268ad
--define_symbol xQueueReceiveFromISR=0x000269d9
--define_symbol xQueueRemoveFromSet=0x00026a6d
--define_symbol xQueueSelectFromSet=0x00026a8f
--define_symbol xQueueSelectFromSetFromISR=0x00026aa1
--define_symbol xQueueSemaphoreTake=0x00026ab5
--define_symbol xQueueTakeMutexRecursive=0x00026c21
--define_symbol xTaskCheckForTimeOut=0x00026c65
--define_symbol xTaskCreate=0x00026cd5
--define_symbol xTaskCreateStatic=0x00026d31
--define_symbol xTaskGetCurrentTaskHandle=0x00026da1
--define_symbol xTaskGetSchedulerState=0x00026dad
--define_symbol xTaskGetTickCount=0x00026dc9
--define_symbol xTaskGetTickCountFromISR=0x00026dd5
--define_symbol xTaskIncrementTick=0x00026de5
--define_symbol xTaskPriorityDisinherit=0x00026eb1
--define_symbol xTaskPriorityInherit=0x00026f45
--define_symbol xTaskRemoveFromEventList=0x00026fd9
--define_symbol xTaskResumeAll=0x00027059
--define_symbol xTaskResumeFromISR=0x00027121
--define_symbol xTimerCreate=0x000271ad
--define_symbol xTimerCreateStatic=0x000271e1
--define_symbol xTimerCreateTimerTask=0x00027219
--define_symbol xTimerGenericCommand=0x00027285
--define_symbol xTimerGetExpiryTime=0x000272f5
--define_symbol xTimerGetTimerDaemonTaskHandle=0x00027315
