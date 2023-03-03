#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X604 device
$(call inherit-product, device/infinix/X604/device.mk)

PRODUCT_DEVICE := X604
PRODUCT_NAME := omni_X604
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X604
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion-infinix-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_x604_h633-user 10 QP1A.190711.020 168928 release-keys"

BUILD_FINGERPRINT := Infinix/H633/Infinix-X604_sprout:10/QP1A.190711.020/H-210930V403:user/release-keys
