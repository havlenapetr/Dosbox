LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := stlport

LOCAL_CPP_EXTENSION := .cpp

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/stlport \
	$(LOCAL_PATH)/src

LOCAL_SRC_FILES := $(addprefix src/,$(notdir $(wildcard $(LOCAL_PATH)/src/*.cpp $(LOCAL_PATH)/src/*.c))))

include $(BUILD_STATIC_LIBRARY)

