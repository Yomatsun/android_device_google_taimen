#Copyright (C) 2020 Yomatsun
#
#Licensed under the Apache License, Version 2.0 (the "License");
#you may not use this file except in compliance with the License.
#You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
#Unless required by applicable law or agreed to in writing, software
#distributed under the License is distributed on an "AS IS" BASIS,
#WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#See the License for the specific language governing permissions and
#limitations under the License.

# Include Bootleggers common configuration
include vendor/bootleggers/config/common_full_phone.mk

# Inherit AOSP device configuration for  taimen
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Override AOSP build properties
PRODUCT_NAME := bootleg_taimen
PRODUCT_DEVICE := taimen
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 2 XL
PRODUCT_MANUFACTURER := Google

#Bootleggers Configuration
BOOTLEGGERS_BUILD_TYPE := UnShishufied
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440
TARGET_USE_SINGLE_BOOTANIMATION := true
TARGET_PICK_BOOTANIMATION := "6"

# Maintainer Prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bootleggers.maintainer=Yomatsun

# Device Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    PRIVATE_BUILD_DESC="taimen-user 10 QQ3A.200705.002 6506677 release-keys"

BUILD_FINGERPRINT := google/taimen/taimen:10/QQ3A.200705.002/6506677:user/release-keys

$(call inherit-product, vendor/google/taimen/taimen-vendor.mk)
$(call inherit-product, vendor/pixelgapps/pixel-gapps.mk)