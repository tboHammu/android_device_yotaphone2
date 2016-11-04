$(call inherit-product, device/yota/yotaphone2/full_yotaphone2.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
# $(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Overlay
# DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_RELEASE_NAME := Yota Yotaphone 2
PRODUCT_NAME := cm_yotaphone2
