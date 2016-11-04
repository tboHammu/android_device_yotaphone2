#
# Copyright 2014 The Android Open-Source Project
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

#ifeq ($(TARGET_PREBUILT_KERNEL),)
#LOCAL_KERNEL := $(LOCAL_PATH)/kernel/zImage
#else
#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
#endif



#.PHONY: $(PRODUCT_OUT)/kernel
#$(PRODUCT_OUT)/kernel: $(TARGET_PREBUILT_KERNEL)
#	cp $(TARGET_PREBUILT_KERNEL) $(PRODUCT_OUT)/kernel

$(call inherit-product-if-exists, vendor/yota/yotaphone2/device-vendor.mk)

PRODUCT_CHARACTERISTICS := nosdcard

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_COPY_FILES += \
	device/yota/yotaphone2/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab \
	device/yota/yotaphone2/rootdir/twrp.fstab:twrp.fstab \
	$(LOCAL_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab \
	$(LOCAL_PATH)/rootdir/twrp.fstab:twrp.fstab
	
