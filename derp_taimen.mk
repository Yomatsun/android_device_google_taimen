#
# Copyright (C) 2020 Yomatsun
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from device & vendor
$(call inherit-product, device/google/taimen/device.mk)
$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)

# Inherit some common DerpFest OS stuff.
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_BOOTANIM_LOW_RES := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

# OFFICIAL DerpFest
DERP_BUILDTYPE := UnOfficial

# Device info
PRODUCT_BRAND := google
PRODUCT_NAME := derp_taimen
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_RESTRICT_VENDOR_FILES := false

# Device props
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 10 QQ3A.200605.001 6392402 release-keys"

	BUILD_FINGERPRINT=google/taimen/taimen:10/QQ3A.200605.001/6392402:user/release-keys \

# GMS client ID
PRODUCT_GMS_CLIENTID_BASE := android-google