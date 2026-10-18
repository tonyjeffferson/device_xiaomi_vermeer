#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from vermeer device
$(call inherit-product, device/xiaomi/vermeer/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Lunaris Flags
TARGET_ENABLE_BLUR := true
TARGET_CUSTOM_UDFPS := true
WITH_BCR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_OPTIMIZED_DEXOPT := true
PRODUCT_NO_CAMERA := false
TARGET_DISABLE_MATLOG := false

# Charging control: suspend battery input while powering the device from USB.
BYPASS_CHARGE_SUPPORTED := true
$(call soong_config_set_bool,lineage_health,charging_control_supports_bypass,true)
$(call soong_config_set,lineage_health,charging_control_charging_path,/sys/class/qcom-battery/input_suspend)
$(call soong_config_set,lineage_health,charging_control_charging_enabled,0)
$(call soong_config_set,lineage_health,charging_control_charging_disabled,1)

#GMS
WITH_GMS := true
WITH_GMS_COMMS_SUITE := false
WITH_PIXEL_LAUNCHER := false
TARGET_USE_MAPS := false
TARGET_USE_FILES := false
TARGET_USE_GPHOTOS := false
TARGET_USE_WALLPAPERS := false

PRODUCT_DEVICE := vermeer
PRODUCT_NAME := lineage_vermeer
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F6 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.brand=POCO \
    ro.product.model=POCO F6 Pro \
    ro.product.device=vermeer \
    ro.product.name=lineage_vermeer \
    ro.product.manufacturer=Xiaomi \
    net.bt.name=POCO F6 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=POCO/vermeer_global/vermeer:16/BP2A.250605.031.A3/OS3.0.304.0.WNKMIXM:user/release-keys
