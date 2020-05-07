APP_ABI := armeabi
APP_ABI += arm64-v8a
APP_ABI += x86
APP_ABI += x86_64

APP_STL := gnustl_static

APP_OPTIM := release
APP_CFLAGS		+= -Wno-error=format-security