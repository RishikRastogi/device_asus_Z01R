#
# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from Z01R device
$(call inherit-product, device/asus/Z01R/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

PRODUCT_BRAND := asus
PRODUCT_DEVICE := Z01R
PRODUCT_MANUFACTURER := asus
PRODUCT_MODEL := Zenfone 5Z
PRODUCT_NAME := bliss_Z01R

WITH_GAPPS := true
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false

PRODUCT_GMS_CLIENTID_BASE := android-asus

TARGET_VENDOR_PRODUCT_NAME := Z01R
TARGET_VENDOR_DEVICE_NAME := Z01R

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_Z01R_1 \
    PRODUCT_NAME=WW_Z01RD \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ3A.210905.001 7511028 release-keys"

BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210905.001/7511028:user/release-keys
