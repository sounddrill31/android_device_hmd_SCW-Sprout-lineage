#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from SCWsprout device
$(call inherit-product, device/hmd/SCWsprout/device.mk)

PRODUCT_DEVICE := SCWsprout
PRODUCT_NAME := lineage_SCWsprout
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia X10
PRODUCT_MANUFACTURER := hmd

PRODUCT_GMS_CLIENTID_BASE := android-hmd

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ScarletWitch_00WW-user 13 TKQ1.220807.001 00WW_3_390 release-keys"

BUILD_FINGERPRINT := Nokia/ScarletWitch_00WW/SCWsprout:13/TKQ1.220807.001/00WW_3_390:user/release-keys
