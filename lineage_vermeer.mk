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
WITH_GMS := true
TARGET_USES_CORE_GAPPS := true
TARGET_CUSTOM_UDFPS := true
WITH_BCR := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_OPTIMIZED_DEXOPT := true
PRODUCT_NO_CAMERA := false
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DISABLE_MATLOG := true

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
