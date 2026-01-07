#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bangkk device
$(call inherit-product, device/motorola/bangkk/device.mk)

# Inherit some common Euclid stuff.
$(call inherit-product, vendor/euclid/config/common_full_phone.mk)

PRODUCT_NAME := euclid_bangkk
PRODUCT_DEVICE := bangkk
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g84 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="bangkk_g-user 15 V1TCS35H.88-16-1 d09472-674756 release-keys MV-301" \
    BuildFingerprint=motorola/bangkk_g/bangkk:15/V1TCS35H.88-16-1/d09472-674756:user/release-keys \
    DeviceProduct=bangkk_g


EUCLID_MAINTAINER := ARYAN

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true


#Gapps
EUCLID_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true  
TARGET_BUILD_BCR := true (For Basic Call Recorder)
TARGET_BUILD_DOTGALLERY := true (For Including DotGallery)

#UDFPS
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true

#Misc.
TARGET_SUPPORTS_TOUCHGESTURES := true
EUCLID_DEVICE := Moto_G84_5G
EUCLID_PROCESSOR := Snapdragon_695
EUCLID_BUILD_TYPE := OFFICIAL