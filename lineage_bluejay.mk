#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Matrixx
MATRIXX_BUILD_TYPE := Official
MATRIXX_MAINTAINER := EinarG.
MATRIXX_CHIPSET := GS101
MATRIXX_BATTERY := 4410mah
MATRIXX_DISPLAY := 1080x2400

# Gapps
WITH_GMS := true
TARGET_SUPPORTS_GOOGLE_EXTRAS := true
TARGET_SUPPORTS_QUICK_TAP := true

TARGET_PREBUILT_PIXEL_LAUNCHER := true
# Ship pixel features (adaptivecharging, dreamliner etc)
TARGET_ENABLE_PIXEL_FEATURES := true
# Use google telephony framework
TARGET_USE_GOOGLE_TELEPHONY := true
# Use gs101 hotword blobs
TARGET_PREBUILT_GOOGLE_CAMERA := true
TARGET_PREBUILT_HOTWORD := true
TARGET_PREBUILT_HOTWORD_TYPE := tensor_gs101

TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := lineage_bluejay

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)
