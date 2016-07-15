LOCAL_PATH := $(call my-dir)/msgpack-c
include $(CLEAR_VARS)

LOCAL_MODULE := msgpack-c_static
LOCAL_MODULE_FILENAME := libmsgpack-c

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include \

LOCAL_CFLAGS := -O3 -fno-builtin-memcmp -D_REENTRANT -DOS_ANDROID -DLEVELDB_PLATFORM_POSIX -DNDEBUG

LOCAL_SRC_FILES := src/objectc.c \
									 src/unpack.c \
									 src/version.c \
									 src/vrefbuffer.c \
									 src/zone.c \

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/include \

include $(BUILD_STATIC_LIBRARY)
