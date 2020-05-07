LOCAL_PATH := $(call my-dir)
SRC_PATH := ../src
 
include $(CLEAR_VARS)
 
LOCAL_ARM_MODE  := arm
LOCAL_MODULE    := liblua
LOCAL_SRC_FILES := $(SRC_PATH)/lapi.c \
 $(SRC_PATH)/lauxlib.c \
 $(SRC_PATH)/lbaselib.c \
 $(SRC_PATH)/lbitlib.c \
 $(SRC_PATH)/lcode.c \
 $(SRC_PATH)/lcorolib.c \
 $(SRC_PATH)/lctype.c \
 $(SRC_PATH)/ldblib.c \
 $(SRC_PATH)/ldebug.c \
 $(SRC_PATH)/ldo.c \
 $(SRC_PATH)/ldump.c \
 $(SRC_PATH)/lfunc.c \
 $(SRC_PATH)/lgc.c \
 $(SRC_PATH)/linit.c \
 $(SRC_PATH)/liolib.c \
 $(SRC_PATH)/llex.c \
 $(SRC_PATH)/lmathlib.c \
 $(SRC_PATH)/lmem.c \
 $(SRC_PATH)/loadlib.c \
 $(SRC_PATH)/lobject.c \
 $(SRC_PATH)/lopcodes.c \
 $(SRC_PATH)/loslib.c \
 $(SRC_PATH)/lparser.c \
 $(SRC_PATH)/lstate.c \
 $(SRC_PATH)/lstring.c \
 $(SRC_PATH)/lstrlib.c \
 $(SRC_PATH)/ltable.c \
 $(SRC_PATH)/ltablib.c \
 $(SRC_PATH)/ltm.c \
 $(SRC_PATH)/lundump.c \
 $(SRC_PATH)/lutf8lib.c \
 $(SRC_PATH)/lvm.c \
 $(SRC_PATH)/lzio.c 

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../include

LOCAL_CFLAGS := -D_ANDROID -DLUA_USE_POSIX -DLUA_USE_DLOPEN #-DLUA_USE_C89
LOCAL_LDLIBS :=  -llog -ldl
 
include $(BUILD_SHARED_LIBRARY)