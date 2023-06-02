--define_symbol att_dispatch_client_can_send_now=0x00005751
--define_symbol att_dispatch_client_request_can_send_now_event=0x00005757
--define_symbol att_dispatch_register_client=0x0000575d
--define_symbol att_dispatch_register_server=0x00005771
--define_symbol att_dispatch_server_can_send_now=0x00005785
--define_symbol att_dispatch_server_request_can_send_now_event=0x0000578b
--define_symbol att_emit_general_event=0x0000583d
--define_symbol att_server_can_send_packet_now=0x00005f51
--define_symbol att_server_deferred_read_response=0x00005f55
--define_symbol att_server_get_mtu=0x00005f6d
--define_symbol att_server_indicate=0x00005fe5
--define_symbol att_server_init=0x00006069
--define_symbol att_server_notify=0x000060a5
--define_symbol att_server_register_packet_handler=0x000061bd
--define_symbol att_server_request_can_send_now_event=0x000061c9
--define_symbol att_set_db=0x000061e5
--define_symbol att_set_read_callback=0x000061f9
--define_symbol att_set_write_callback=0x00006205
--define_symbol bd_addr_cmp=0x00006375
--define_symbol bd_addr_copy=0x0000637b
--define_symbol bd_addr_to_str=0x00006385
--define_symbol big_endian_read_16=0x000063bd
--define_symbol big_endian_read_32=0x000063c5
--define_symbol big_endian_store_16=0x000063d9
--define_symbol big_endian_store_32=0x000063e5
--define_symbol btstack_config=0x00006539
--define_symbol btstack_memory_pool_create=0x00006677
--define_symbol btstack_memory_pool_free=0x000066a1
--define_symbol btstack_memory_pool_get=0x00006701
--define_symbol btstack_push_user_msg=0x00006769
--define_symbol btstack_push_user_runnable=0x00006775
--define_symbol char_for_nibble=0x000069fd
--define_symbol eTaskConfirmSleepModeStatus=0x00006cc9
--define_symbol gap_add_dev_to_periodic_list=0x000072f5
--define_symbol gap_add_whitelist=0x00007305
--define_symbol gap_aes_encrypt=0x00007311
--define_symbol gap_clear_white_lists=0x00007355
--define_symbol gap_clr_adv_set=0x00007361
--define_symbol gap_clr_periodic_adv_list=0x0000736d
--define_symbol gap_create_connection_cancel=0x00007379
--define_symbol gap_disconnect=0x00007385
--define_symbol gap_disconnect_all=0x000073b1
--define_symbol gap_ext_create_connection=0x000073f1
--define_symbol gap_get_connection_parameter_range=0x000074e1
--define_symbol gap_le_read_channel_map=0x0000751d
--define_symbol gap_periodic_adv_create_sync=0x00007589
--define_symbol gap_periodic_adv_create_sync_cancel=0x000075ad
--define_symbol gap_periodic_adv_term_sync=0x000075b9
--define_symbol gap_read_periodic_adv_list_size=0x00007641
--define_symbol gap_read_phy=0x0000764d
--define_symbol gap_read_remote_used_features=0x00007659
--define_symbol gap_read_remote_version=0x00007665
--define_symbol gap_read_rssi=0x00007671
--define_symbol gap_remove_whitelist=0x0000767d
--define_symbol gap_rmv_adv_set=0x000076f9
--define_symbol gap_rmv_dev_from_periodic_list=0x00007705
--define_symbol gap_rx_test_v2=0x00007715
--define_symbol gap_set_adv_set_random_addr=0x0000774d
--define_symbol gap_set_connection_parameter_range=0x00007795
--define_symbol gap_set_data_length=0x000077ad
--define_symbol gap_set_def_phy=0x000077c5
--define_symbol gap_set_ext_adv_data=0x000077d5
--define_symbol gap_set_ext_adv_enable=0x000077ed
--define_symbol gap_set_ext_adv_para=0x00007869
--define_symbol gap_set_ext_scan_enable=0x00007941
--define_symbol gap_set_ext_scan_para=0x00007959
--define_symbol gap_set_ext_scan_response_data=0x00007a01
--define_symbol gap_set_host_channel_classification=0x00007a19
--define_symbol gap_set_periodic_adv_data=0x00007a29
--define_symbol gap_set_periodic_adv_enable=0x00007a99
--define_symbol gap_set_periodic_adv_para=0x00007aa9
--define_symbol gap_set_phy=0x00007ac1
--define_symbol gap_set_random_device_address=0x00007add
--define_symbol gap_start_ccm=0x00007b0d
--define_symbol gap_test_end=0x00007b61
--define_symbol gap_tx_test_v2=0x00007b6d
--define_symbol gap_tx_test_v4=0x00007b85
--define_symbol gap_update_connection_parameters=0x00007ba9
--define_symbol gap_vendor_tx_continuous_wave=0x00007bed
--define_symbol gatt_client_cancel_write=0x00008115
--define_symbol gatt_client_discover_characteristic_descriptors=0x0000813b
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid128=0x0000817b
--define_symbol gatt_client_discover_characteristics_for_handle_range_by_uuid16=0x000081cb
--define_symbol gatt_client_discover_characteristics_for_service=0x0000821b
--define_symbol gatt_client_discover_primary_services=0x00008251
--define_symbol gatt_client_discover_primary_services_by_uuid128=0x00008283
--define_symbol gatt_client_discover_primary_services_by_uuid16=0x000082c7
--define_symbol gatt_client_execute_write=0x00008303
--define_symbol gatt_client_find_included_services_for_service=0x00008329
--define_symbol gatt_client_get_mtu=0x00008357
--define_symbol gatt_client_is_ready=0x000083f9
--define_symbol gatt_client_listen_for_characteristic_value_updates=0x0000840f
--define_symbol gatt_client_prepare_write=0x00008431
--define_symbol gatt_client_read_characteristic_descriptor_using_descriptor_handle=0x0000846d
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle=0x00008497
--define_symbol gatt_client_read_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x0000849d
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle=0x000084cb
--define_symbol gatt_client_read_long_value_of_characteristic_using_value_handle_with_offset=0x000084d1
--define_symbol gatt_client_read_multiple_characteristic_values=0x000084ff
--define_symbol gatt_client_read_value_of_characteristic_using_value_handle=0x0000852f
--define_symbol gatt_client_read_value_of_characteristics_by_uuid128=0x0000855d
--define_symbol gatt_client_read_value_of_characteristics_by_uuid16=0x000085a9
--define_symbol gatt_client_register_handler=0x000085f5
--define_symbol gatt_client_reliable_write_long_value_of_characteristic=0x00008601
--define_symbol gatt_client_signed_write_without_response=0x00008a31
--define_symbol gatt_client_write_characteristic_descriptor_using_descriptor_handle=0x00008af5
--define_symbol gatt_client_write_client_characteristic_configuration=0x00008b2f
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle=0x00008b81
--define_symbol gatt_client_write_long_characteristic_descriptor_using_descriptor_handle_with_offset=0x00008b91
--define_symbol gatt_client_write_long_value_of_characteristic=0x00008bcd
--define_symbol gatt_client_write_long_value_of_characteristic_with_offset=0x00008bdd
--define_symbol gatt_client_write_value_of_characteristic=0x00008c19
--define_symbol gatt_client_write_value_of_characteristic_without_response=0x00008c4f
--define_symbol hci_add_event_handler=0x0000a175
--define_symbol hci_power_control=0x0000a969
--define_symbol hci_register_acl_packet_handler=0x0000ab1d
--define_symbol kv_commit=0x0000b091
--define_symbol kv_get=0x0000b0e9
--define_symbol kv_init=0x0000b101
--define_symbol kv_put=0x0000b169
--define_symbol kv_remove=0x0000b1e1
--define_symbol kv_remove_all=0x0000b21d
--define_symbol kv_value_modified=0x0000b261
--define_symbol kv_visit=0x0000b265
--define_symbol l2cap_add_event_handler=0x0000b319
--define_symbol l2cap_can_send_packet_now=0x0000b329
--define_symbol l2cap_create_le_credit_based_connection_request=0x0000b4e5
--define_symbol l2cap_credit_based_send=0x0000b629
--define_symbol l2cap_credit_based_send_continue=0x0000b655
--define_symbol l2cap_disconnect=0x0000b6d1
--define_symbol l2cap_get_le_credit_based_connection_credits=0x0000b921
--define_symbol l2cap_get_peer_mtu_for_local_cid=0x0000b93d
--define_symbol l2cap_init=0x0000bd11
--define_symbol l2cap_le_send_flow_control_credit=0x0000be07
--define_symbol l2cap_max_le_mtu=0x0000c111
--define_symbol l2cap_register_packet_handler=0x0000c239
--define_symbol l2cap_register_service=0x0000c245
--define_symbol l2cap_request_can_send_now_event=0x0000c355
--define_symbol l2cap_request_connection_parameter_update=0x0000c36f
--define_symbol l2cap_send_echo_request=0x0000c841
--define_symbol l2cap_unregister_service=0x0000c901
--define_symbol le_device_db_add=0x0000c959
--define_symbol le_device_db_find=0x0000ca2d
--define_symbol le_device_db_from_key=0x0000ca59
--define_symbol le_device_db_iter_cur=0x0000ca61
--define_symbol le_device_db_iter_cur_key=0x0000ca65
--define_symbol le_device_db_iter_init=0x0000ca69
--define_symbol le_device_db_iter_next=0x0000ca71
--define_symbol le_device_db_remove_key=0x0000ca97
--define_symbol ll_aes_encrypt=0x0000cac5
--define_symbol ll_config=0x0000cb41
--define_symbol ll_free=0x0000cb51
--define_symbol ll_get_heap_free_size=0x0000cb5d
--define_symbol ll_hint_on_ce_len=0x0000cb6d
--define_symbol ll_legacy_adv_set_interval=0x0000cba5
--define_symbol ll_malloc=0x0000cbb5
--define_symbol ll_query_timing_info=0x0000cced
--define_symbol ll_scan_set_fixed_channel=0x0000cd91
--define_symbol ll_set_adv_access_address=0x0000cf89
--define_symbol ll_set_adv_coded_scheme=0x0000cf95
--define_symbol ll_set_conn_coded_scheme=0x0000cfc5
--define_symbol ll_set_conn_latency=0x0000cff1
--define_symbol ll_set_conn_tx_power=0x0000d021
--define_symbol ll_set_def_antenna=0x0000d069
--define_symbol ll_set_initiating_coded_scheme=0x0000d085
--define_symbol ll_set_max_conn_number=0x0000d091
--define_symbol nibble_for_char=0x0001d011
--define_symbol platform_32k_rc_auto_tune=0x0001d0bd
--define_symbol platform_32k_rc_tune=0x0001d139
--define_symbol platform_calibrate_32k=0x0001d14d
--define_symbol platform_config=0x0001d151
--define_symbol platform_enable_irq=0x0001d279
--define_symbol platform_get_current_task=0x0001d2b1
--define_symbol platform_get_gen_os_driver=0x0001d2d5
--define_symbol platform_get_heap_status=0x0001d2dd
--define_symbol platform_get_task_handle=0x0001d2f5
--define_symbol platform_get_us_time=0x0001d315
--define_symbol platform_get_version=0x0001d319
--define_symbol platform_hrng=0x0001d321
--define_symbol platform_install_isr_stack=0x0001d329
--define_symbol platform_install_task_stack=0x0001d335
--define_symbol platform_patch_rf_init_data=0x0001d36d
--define_symbol platform_printf=0x0001d379
--define_symbol platform_raise_assertion=0x0001d38d
--define_symbol platform_rand=0x0001d3a1
--define_symbol platform_read_info=0x0001d3a5
--define_symbol platform_read_persistent_reg=0x0001d3d5
--define_symbol platform_reset=0x0001d3e5
--define_symbol platform_set_evt_callback=0x0001d409
--define_symbol platform_set_evt_callback_table=0x0001d41d
--define_symbol platform_set_irq_callback=0x0001d429
--define_symbol platform_set_irq_callback_table=0x0001d445
--define_symbol platform_set_rf_clk_source=0x0001d451
--define_symbol platform_set_rf_init_data=0x0001d45d
--define_symbol platform_set_rf_power_mapping=0x0001d469
--define_symbol platform_set_timer=0x0001d475
--define_symbol platform_shutdown=0x0001d479
--define_symbol platform_switch_app=0x0001d47d
--define_symbol platform_trace_raw=0x0001d4a9
--define_symbol platform_write_persistent_reg=0x0001d4c1
--define_symbol printf_hexdump=0x0001d675
--define_symbol pvPortMalloc=0x0001e165
--define_symbol pvTaskIncrementMutexHeldCount=0x0001e24d
--define_symbol pvTimerGetTimerID=0x0001e265
--define_symbol pxPortInitialiseStack=0x0001e291
--define_symbol reverse_128=0x0001e439
--define_symbol reverse_24=0x0001e43f
--define_symbol reverse_48=0x0001e445
--define_symbol reverse_56=0x0001e44b
--define_symbol reverse_64=0x0001e451
--define_symbol reverse_bd_addr=0x0001e457
--define_symbol reverse_bytes=0x0001e45d
--define_symbol sm_add_event_handler=0x0001e5c9
--define_symbol sm_address_resolution_lookup=0x0001e721
--define_symbol sm_authenticated=0x0001ea81
--define_symbol sm_authorization_decline=0x0001ea8f
--define_symbol sm_authorization_grant=0x0001eaaf
--define_symbol sm_authorization_state=0x0001eacf
--define_symbol sm_bonding_decline=0x0001eae9
--define_symbol sm_config=0x0001ef09
--define_symbol sm_config_conn=0x0001ef21
--define_symbol sm_encryption_key_size=0x0001f0d7
--define_symbol sm_just_works_confirm=0x0001f611
--define_symbol sm_le_device_key=0x0001f94d
--define_symbol sm_passkey_input=0x0001f9e3
--define_symbol sm_private_random_address_generation_get=0x0001fd91
--define_symbol sm_private_random_address_generation_get_mode=0x0001fd99
--define_symbol sm_private_random_address_generation_set_mode=0x0001fda5
--define_symbol sm_private_random_address_generation_set_update_period=0x0001fdcd
--define_symbol sm_register_oob_data_callback=0x0001ff09
--define_symbol sm_request_pairing=0x0001ff15
--define_symbol sm_send_security_request=0x0002094f
--define_symbol sm_set_accepted_stk_generation_methods=0x00020975
--define_symbol sm_set_authentication_requirements=0x00020981
--define_symbol sm_set_encryption_key_size_range=0x0002098d
--define_symbol sscanf_bd_addr=0x00020ce9
--define_symbol sysSetPublicDeviceAddr=0x0002109d
--define_symbol uuid128_to_str=0x0002167d
--define_symbol uuid_add_bluetooth_prefix=0x000216d5
--define_symbol uuid_has_bluetooth_prefix=0x000216f5
--define_symbol uxListRemove=0x00021711
--define_symbol uxQueueMessagesWaiting=0x00021739
--define_symbol uxQueueMessagesWaitingFromISR=0x00021761
--define_symbol uxQueueSpacesAvailable=0x0002177d
--define_symbol uxTaskGetStackHighWaterMark=0x000217a9
--define_symbol uxTaskPriorityGet=0x000217c9
--define_symbol uxTaskPriorityGetFromISR=0x000217e5
--define_symbol vListInitialise=0x0002189f
--define_symbol vListInitialiseItem=0x000218b5
--define_symbol vListInsert=0x000218bb
--define_symbol vListInsertEnd=0x000218eb
--define_symbol vPortEndScheduler=0x00021905
--define_symbol vPortEnterCritical=0x00021931
--define_symbol vPortExitCritical=0x00021975
--define_symbol vPortFree=0x000219a9
--define_symbol vPortSuppressTicksAndSleep=0x00021a3d
--define_symbol vPortValidateInterruptPriority=0x00021b65
--define_symbol vQueueDelete=0x00021bc1
--define_symbol vQueueWaitForMessageRestricted=0x00021bed
--define_symbol vTaskDelay=0x00021c35
--define_symbol vTaskInternalSetTimeOutState=0x00021c81
--define_symbol vTaskMissedYield=0x00021c91
--define_symbol vTaskPlaceOnEventList=0x00021c9d
--define_symbol vTaskPlaceOnEventListRestricted=0x00021cd5
--define_symbol vTaskPriorityDisinheritAfterTimeout=0x00021d15
--define_symbol vTaskPrioritySet=0x00021dc1
--define_symbol vTaskResume=0x00021e89
--define_symbol vTaskStartScheduler=0x00021f0d
--define_symbol vTaskStepTick=0x00021f9d
--define_symbol vTaskSuspend=0x00021fcd
--define_symbol vTaskSuspendAll=0x00022089
--define_symbol vTaskSwitchContext=0x00022099
--define_symbol xPortStartScheduler=0x00022141
--define_symbol xQueueAddToSet=0x00022209
--define_symbol xQueueCreateCountingSemaphore=0x0002222d
--define_symbol xQueueCreateCountingSemaphoreStatic=0x00022269
--define_symbol xQueueCreateMutex=0x000222ad
--define_symbol xQueueCreateMutexStatic=0x000222c3
--define_symbol xQueueCreateSet=0x000222dd
--define_symbol xQueueGenericCreate=0x000222e5
--define_symbol xQueueGenericCreateStatic=0x00022331
--define_symbol xQueueGenericReset=0x00022399
--define_symbol xQueueGenericSend=0x00022425
--define_symbol xQueueGenericSendFromISR=0x00022591
--define_symbol xQueueGiveFromISR=0x00022651
--define_symbol xQueueGiveMutexRecursive=0x000226f5
--define_symbol xQueueIsQueueEmptyFromISR=0x00022735
--define_symbol xQueueIsQueueFullFromISR=0x00022759
--define_symbol xQueuePeek=0x00022781
--define_symbol xQueuePeekFromISR=0x000228a9
--define_symbol xQueueReceive=0x00022915
--define_symbol xQueueReceiveFromISR=0x00022a41
--define_symbol xQueueRemoveFromSet=0x00022ad5
--define_symbol xQueueSelectFromSet=0x00022af7
--define_symbol xQueueSelectFromSetFromISR=0x00022b09
--define_symbol xQueueSemaphoreTake=0x00022b1d
--define_symbol xQueueTakeMutexRecursive=0x00022c89
--define_symbol xTaskCheckForTimeOut=0x00022ccd
--define_symbol xTaskCreate=0x00022d3d
--define_symbol xTaskCreateStatic=0x00022d99
--define_symbol xTaskGetCurrentTaskHandle=0x00022e09
--define_symbol xTaskGetSchedulerState=0x00022e15
--define_symbol xTaskGetTickCount=0x00022e31
--define_symbol xTaskGetTickCountFromISR=0x00022e3d
--define_symbol xTaskIncrementTick=0x00022e4d
--define_symbol xTaskPriorityDisinherit=0x00022f19
--define_symbol xTaskPriorityInherit=0x00022fad
--define_symbol xTaskRemoveFromEventList=0x00023041
--define_symbol xTaskResumeAll=0x000230c1
--define_symbol xTaskResumeFromISR=0x00023189
--define_symbol xTimerCreate=0x00023215
--define_symbol xTimerCreateStatic=0x00023249
--define_symbol xTimerCreateTimerTask=0x00023281
--define_symbol xTimerGenericCommand=0x000232ed
--define_symbol xTimerGetExpiryTime=0x0002335d
--define_symbol xTimerGetTimerDaemonTaskHandle=0x0002337d
