#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := OP5958L1

# Configure full_base_telephony.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/oneplus/OP5958L1/device.mk)

# OEM Info (automatically taken from device tree path)
BOARD_VENDOR := oneplus

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OP5958L1
PRODUCT_NAME := pb_OP5958L1
PRODUCT_SYSTEM_NAME := $(PRODUCT_MODEL)
PRODUCT_SYSTEM_DEVICE := OP5958L1
PRODUCT_BRAND := $(BOARD_VENDOR)
PRODUCT_MODEL := $(shell echo $(PRODUCT_BRAND) | tr  '[:lower:]' '[:upper:]')_$(PRODUCT_DEVICE)
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Assert
TARGET_OTA_ASSERT_DEVICE := OP5958L1,CPH2467,CPH2465,CPH2513,CPH2515
