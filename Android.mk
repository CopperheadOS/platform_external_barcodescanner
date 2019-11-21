 LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_MODULE := dm7-zxing
LOCAL_SRC_FILES := $(call all-java-files-under, zxing/src/main/java)
LOCAL_MANIFEST_FILE := zxing/src/main/AndroidManifest.xml
LOCAL_JAVA_LIBRARIES := zxing-core-1.7 dm7-core

include $(BUILD_STATIC_JAVA_LIBRARY)

include $(CLEAR_VARS)

LOCAL_USE_AAPT2 := true
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_MODULE := dm7-core
LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/core/src/main/res
LOCAL_SRC_FILES := $(call all-java-files-under, core/src/main/java)
LOCAL_MANIFEST_FILE := core/src/main/AndroidManifest.xml
LOCAL_JAVA_LIBRARIES := android-support-annotations

include $(BUILD_STATIC_JAVA_LIBRARY)
