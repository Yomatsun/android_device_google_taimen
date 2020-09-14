#
# Copyright (C) 2020 Yomatsun
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)
$(call inherit-product, device/google/taimen/device.mk)
$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)

# Inherit some common Revenge OS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Some Extra's
TARGET_BOOT_ANIMATION_RES := 1440
REVENGEOS_BUILDTYPE := UNOFFICIAL

# Device info
PRODUCT_BRAND := google
PRODUCT_NAME := revengeos_taimen
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

# Device props
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 10 QQ3A.200805.001 6578210 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:10/QQ3A.200805.001/6578210:user/release-keys

# GMS client ID
PRODUCT_GMS_CLIENTID_BASE := android-google 
