# Copyright (C) 2020 The PixelDust Project
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

# Bootanimation
BOOTANIMATION := 1440

# Power HAL
TARGET_USES_DEVICE_SPECIFIC_POWERHAL := true

# Release name
PRODUCT_RELEASE_NAME := OnePlus 8 Pro
export TARGET_DEVICE := instantnoodlep

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, device/oneplus/instantnoodlep/device.mk)

# Include common PixelDust stuff
include vendor/pixeldust/configs/pixeldust_phone.mk

# Include optional stuff (e.g. prebuilt apps)
include vendor/pixeldust/configs/system_optional.mk

# Google Apps
$(call inherit-product, vendor/gms/gms_full.mk)

# Google Camera
$(call inherit-product, packages/apps/googlecamera/config.mk)

# Ship the default pixel apns instead of Carrier configs by Google to prevent problems for legacy devices
TARGET_USE_PIXEL_APNS := true

# Device identifier. This must come after all inclusions
PRODUCT_NAME := pixeldust_instantnoodlep
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2023
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_DEVICE := instantnoodlep

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_PROPERTY_OVERRIDES += \
    ro.pixeldust.maintainer="fKm" \
    ro.pixeldust.device="instantnoodlep"
