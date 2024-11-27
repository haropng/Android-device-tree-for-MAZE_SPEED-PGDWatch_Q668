#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from PGDWatch_Q668 device
$(call inherit-product, device/maze_speed/PGDWatch_Q668/device.mk)

PRODUCT_DEVICE := PGDWatch_Q668
PRODUCT_NAME := omni_PGDWatch_Q668
PRODUCT_BRAND := MAZE_SPEED
PRODUCT_MODEL := PGDWatch_Q668
PRODUCT_MANUFACTURER := maze_speed

PRODUCT_GMS_CLIENTID_BASE := android-hongyu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k39tv1_64_bsp-user 11 RP1A.200720.011 1652148133 release-keys"

BUILD_FINGERPRINT := alps/PGDWatch_Q668/PGDWatch_Q668:11/RP1A.200720.011/1652148133:user/release-keys
