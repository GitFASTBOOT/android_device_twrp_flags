# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

#recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

TARGET_USES_MKE2FS := true

# Verified Boot (this basic avb flags so you might need to add more)
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

TW_THEME := portrait_hdpi   #use this if you use phone not tablet
TW_EXTRA_LANGUAGES := false
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

#display
TW_DEFAULT_BRIGHTNESS := 1400
TW_MAX_BRIGHTNESS := 2048
TW_FRAMERATE := 60   #if your device support 90hz set it to 90

#Exclude 
TW_EXCLUDE_DEFAULT_USB_INIT := true  #use only if you have an init.recovery.usb.rc
#No need for this also removing this will to save space
TW_EXCLUDE_PYTHON := true
TW_EXCLUDE_NANO := true
TW_EXCLUDE_APEX := true
TW_EXCLUDE_TWRPAPP := true

#logs
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Storage
RECOVERY_SDCARD_ON_DATA := true

#you need to define this 
# Architecture
#TARGET_ARCH := arm64
#TARGET_ARCH_VARIANT := armv8-a
#TARGET_CPU_ABI := arm64-v8a
#TARGET_CPU_ABI2 := 
#TARGET_CPU_VARIANT := generic
#TARGET_CPU_VARIANT_RUNTIME := cortex-a53

#TARGET_2ND_ARCH := arm
#TARGET_2ND_ARCH_VARIANT := armv7-a-neon
#TARGET_2ND_CPU_ABI := armeabi-v7a
#TARGET_2ND_CPU_ABI2 := armeabi
#TARGET_2ND_CPU_VARIANT := generic
#TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Platform
#TARGET_BOARD_PLATFORM := mt6768 #see your board codename




