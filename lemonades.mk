#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.hbmservice_support=true

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

PRODUCT_NAME := lemonades
PRODUCT_DEVICE := lemonades
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

# Lunaris specific properties
LUNARIS_MAINTAINER := Spidey
LUNARIS_BUILD_TYPE := UNOFFICIAL
WITH_GMS := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_CUSTOM_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
SURFACE_FLINGER_BOOST := true
TARGET_NEEDS_VULKAN_MEDIA_FIX := true

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus9R_IND-user 14 UKQ1.230924.001 R.1f0e589-1-3ea7e release-keys" \
    BuildFingerprint=OnePlus/OnePlus9R_IND/OnePlus9R:14/UKQ1.230924.001/R.1f0e589-1-3ea7e:user/release-keys \
    DeviceName=OnePlus9R \
    DeviceProduct=OnePlus9R \
    SystemDevice=OnePlus9R \
    SystemName=OnePlus9R
