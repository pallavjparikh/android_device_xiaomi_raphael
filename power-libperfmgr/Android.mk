LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power@1.3-service.pixel-libperfmgr
LOCAL_MODULE_STEM := android.hardware.power@1.3-service
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional

LOCAL_REQUIRED_MODULES := \
    android.hardware.power@1.3-service.pixel-libperfmgr.rc

LOCAL_SRC_FILES := \
    Power.cpp \
    service.cpp \
    InteractionHandler.cpp \
    power-helper.c \
    display-helper.c

LOCAL_SHARED_LIBRARIES := \
    android.hardware.power@1.0 \
    android.hardware.power@1.1 \
    android.hardware.power@1.2 \
    android.hardware.power@1.3 \
    libbase \
    libdl \
    libhidlbase \
    libhidltransport \
    liblog \
    libutils \
    libcutils \
    libperfmgr

LOCAL_HEADER_LIBRARIES += \
    libutils_headers \
    libhardware_headers

LOCAL_C_INCLUDES := external/libxml2/include \
                    external/icu/icu4c/source/common

LOCAL_CFLAGS += -Wall -Wextra

include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.power@1.3-service.pixel-libperfmgr.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := android.hardware.power@1.3-service.rc

LOCAL_SRC_FILES := android.hardware.power@1.3-service.pixel-libperfmgr.rc

include $(BUILD_PREBUILT)
