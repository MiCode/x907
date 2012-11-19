LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(call all-java-files-under, src)

LOCAL_PACKAGE_NAME := StockSettings-x907

LOCAL_CERTIFICATE := platform

LOCAL_JAVA_LIBRARIES += oppo-framework

include $(BUILD_PACKAGE)

