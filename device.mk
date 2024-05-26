#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from wayne-common
$(call inherit-product, device/xiaomi/wayne-common/wayne.mk)

# Non_ab_device
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    device/xiaomi/wayne/overlay

# Init
PRODUCT_PACKAGES += \
    fstab.qcom \
    fstab.qcom.ramdisk

# Seamless Update
AB_OTA_UPDATER := false

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Wifi
PRODUCT_PACKAGES += \
    WayneWifiOverlay

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/wayne/wayne-vendor.mk)
