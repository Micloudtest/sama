#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gale device
$(call inherit-product, device/xiaomi/gale/device.mk)

PRODUCT_DEVICE := gale
PRODUCT_NAME := twrp_gale
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := Redmi 13C
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RELEASE_NAME := gale

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
