# Copyright (C) 2011-2014 The Android-x86 Open Source Project

ifeq ($(strip $(BOARD_HAS_GPS_HARDWARE)),true)
LOCAL_PATH := $(call my-dir)

# HAL module implemenation, not prelinked and stored in
# hw/<OVERLAY_HARDWARE_MODULE_ID>.<ro.product.board>.so
include $(CLEAR_VARS)
LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_MODULE := gps.dell_7202
LOCAL_OVERRIDES_PACKAGES:= gps.default
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_SRC_FILES := gps.c

LOCAL_CFLAGS := -Wno-unused-parameter

include $(BUILD_SHARED_LIBRARY)

endif
