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


PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_PACKAGES += libstlport

PRODUCT_PACKAGES += libcrypto

PRODUCT_PACKAGES += libboringssl-compat

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/configs/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audiod \
    audio_policy.msm8974 \
    audio.primary.msm8974 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix

PRODUCT_PACKAGES += \
    camera.msm8974
# Display
PRODUCT_PACKAGES += \
    copybit.msm8974 \
    gralloc.msm8974 \
    hwcomposer.msm8974 \
    liboverlay \
    memtrack.msm8974

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    fibmap.f2fs \
    fsck.f2fs \
    make_ext4fs \
    mkfs.f2fs \
    resize2fs \
    setup_fs

# GPS
PRODUCT_PACKAGES += \
    gps.msm8974

# IPv6 tethering
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    curl \
    libnl_2 \
    libbson \
    libcnefeatureconfig \
    libtinyxml \
    libxml2

# NFC
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    libnfc \
    libnfc_jni \
    libnfc_ndef \
    Nfc \
    nfc.msm8974 \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf




# ANT+
PRODUCT_PACKAGES += \
    AntHalService \
    com.dsi.ant.antradio_library \
    libantradio

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Enable USB OTG interface
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=true

# proprietary wifi display, if available
ifneq ($(QCPATH),)
PRODUCT_BOOT_JARS += WfdCommon
endif

# Enable Bluetooth HFP service
PRODUCT_PROPERTY_OVERRIDES +=
    bluetooth.hfp.client=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# System properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    persist.timed.enable=true \
    ro.opengles.version=196608 \
    ro.qualcomm.bt.hci_transport=smd \
    ro.telephony.default_network=9 \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.data.tcpackprio.enable=true \
    ro.data.large_tcp_window_size=true \
    telephony.lteOnGsmDevice=1 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15 \
    ro.qualcomm.perf.cores_online=2 \
    ro.vendor.extension_library=libqti-perfd-client.so \
    ro.telephony.call_ring.multiple=0

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sensors.ir_proximity=true
# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8974

# Lights
PRODUCT_PACKAGES += \
    lights.msm8974
# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdivxdrmdecrypt \
    libdashplayer \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    power.msm8974
# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.bt.sh

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    init.target.rc \
    ueventd.qcom.rc 

# Support
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    libcurl \
    libxml2
# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8974.conf:system/etc/thermal-engine-8974.conf

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    hostapd_default.conf \
    hostapd.accept \
    hostapd.deny \
    libwpa_client \
    wcnss_service \
    wpa_supplicant

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15


PRODUCT_COPY_FILES += \
    vendor/yota/yotaphone2/proprietary/bin/ATFWD-daemon:system/bin/ATFWD-daemon \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libril-qc-radioconfig.so:system/vendor/lib/libril-qc-radioconfig.so \
    vendor/yota/yotaphone2/proprietary/bin/adsprpcd:system/bin/adsprpcd \
    vendor/yota/yotaphone2/proprietary/bin/diag_klog:system/bin/diag_klog \
    vendor/yota/yotaphone2/proprietary/bin/diag_mdlog:system/bin/diag_mdlog \
    vendor/yota/yotaphone2/proprietary/bin/irsc_util:system/bin/irsc_util \
    vendor/yota/yotaphone2/proprietary/bin/radish:system/bin/radish \
    vendor/yota/yotaphone2/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/yota/yotaphone2/proprietary/bin/sensors.qcom:system/bin/sensors.qcom \
    vendor/yota/yotaphone2/proprietary/bin/subsystem_ramdump:system/bin/subsystem_ramdump \
    vendor/yota/yotaphone2/proprietary/bin/hvdcp:system/bin/hvdcp \
    vendor/yota/yotaphone2/proprietary/bin/btnvtool:system/bin/btnvtool \
    vendor/yota/yotaphone2/proprietary/bin/hci_qcomm_init:system/bin/hci_qcomm_init \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libbtnv.so:system/vendor/lib/libbtnv.so \
    vendor/yota/yotaphone2/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    vendor/yota/yotaphone2/proprietary/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    vendor/yota/yotaphone2/proprietary/lib/hw/camera.msm8974.so:system/lib/hw/camera.msm8974.so \
    vendor/yota/yotaphone2/proprietary/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    vendor/yota/yotaphone2/proprietary/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    vendor/yota/yotaphone2/proprietary/vendor/bin/RIDLClient.exe:system/vendor/bin/RIDLClient.exe \
    vendor/yota/yotaphone2/proprietary/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk:system/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk \
    vendor/yota/yotaphone2/proprietary/priv-app/dpmserviceapp/dpmserviceapp.apk:system/priv-app/dpmserviceapp/dpmserviceapp.apk \
    vendor/yota/yotaphone2/proprietary/priv-app/com.qualcomm.location/com.qualcomm.location.apk:system/priv-app/com.qualcomm.location/com.qualcomm.location.apk \
    vendor/yota/yotaphone2/proprietary/lib/libqomx_core.so:system/lib/libqomx_core.so \
    vendor/yota/yotaphone2/proprietary/lib/libloc_core.so:system/lib/libloc_core.so \
    vendor/yota/yotaphone2/proprietary/lib/libloc_eng.so:system/lib/libloc_eng.so \
    vendor/yota/yotaphone2/proprietary/lib/libgps.utils.so:system/lib/libgps.utils.so \
    vendor/yota/yotaphone2/proprietary/lib/libchromatix_imx175_liveshot.so:system/lib/libchromatix_imx175_liveshot.so \
    vendor/yota/yotaphone2/proprietary/lib/libchromatix_imx135_liveshot.so:system/lib/libchromatix_imx135_liveshot.so \
    vendor/yota/yotaphone2/proprietary/bin/mpdecision:system/bin/mpdecision \
    vendor/yota/yotaphone2/proprietary/vendor/bin/thermal-engine:system/vendor/bin/thermal-engine \
    vendor/yota/yotaphone2/proprietary/bin/qseecomd:system/bin/qseecomd \
    vendor/yota/yotaphone2/proprietary/lib/libdrmdecrypt.so:system/lib/libdrmdecrypt.so \
    vendor/yota/yotaphone2/proprietary/priv-app/com.qualcomm.location/com.qualcomm.location.apk:system/priv-app/com.qualcomm.location/com.qualcomm.location.apk \
    vendor/yota/yotaphone2/proprietary/bin/gpsone_daemon:system/bin/gpsone_daemon \
    vendor/yota/yotaphone2/proprietary/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml \
    vendor/yota/yotaphone2/proprietary/etc/gps.conf:system/etc/gps.conf \
    vendor/yota/yotaphone2/proprietary/etc/izat.conf:system/etc/izat.conf \
    vendor/yota/yotaphone2/proprietary/etc/sap.conf:system/etc/sap.conf \
    vendor/yota/yotaphone2/proprietary/lib/libloc_api_v02.so:system/lib/libloc_api_v02.so \
    vendor/yota/yotaphone2/proprietary/etc/init.ath3k.bt.sh:system/etc/init.ath3k.bt.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.crda.sh:system/etc/init.crda.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.audio.sh:system/etc/init.qcom.audio.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.efs.sync.sh:system/etc/init.qcom.efs.sync.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.uicc.sh:system/etc/init.qcom.uicc.sh \
    vendor/yota/yotaphone2/proprietary/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw \
    vendor/yota/yotaphone2/proprietary/bin/imsdatadaemon:system/bin/imsdatadaemon \
    vendor/yota/yotaphone2/proprietary/bin/imsqmidaemon:system/bin/imsqmidaemon \
    vendor/yota/yotaphone2/proprietary/bin/ims_rtp_daemon:system/bin/ims_rtp_daemon \
    vendor/yota/yotaphone2/proprietary/bin/irsc_util:system/bin/irsc_util \
    vendor/yota/yotaphone2/proprietary/bin/efsks:system/bin/efsks \
    vendor/yota/yotaphone2/proprietary/bin/ks:system/bin/ks \
    vendor/yota/yotaphone2/proprietary/bin/netmgrd:system/bin/netmgrd \
    vendor/yota/yotaphone2/proprietary/bin/qcks:system/bin/qcks \
    vendor/yota/yotaphone2/proprietary/bin/qmuxd:system/bin/qmuxd \
    vendor/yota/yotaphone2/proprietary/bin/radish:system/bin/radish \
    vendor/yota/yotaphone2/proprietary/bin/rfs_access:system/bin/rfs_access \
    vendor/yota/yotaphone2/proprietary/bin/rmt_storage:system/bin/rmt_storage \
    vendor/yota/yotaphone2/proprietary/lib/libmdmdetect.so:system/lib/libmdmdetect.so \
    vendor/yota/yotaphone2/proprietary/etc/firmware/Signedrompatch_v20.bin:system/etc/firmware/Signedrompatch_v20.bin \
    vendor/yota/yotaphone2/proprietary/etc/firmware/Signedrompatch_v21.bin:system/etc/firmware/Signedrompatch_v21.bin \
    vendor/yota/yotaphone2/proprietary/etc/firmware/Signedrompatch_v24.bin:system/etc/firmware/Signedrompatch_v24.bin \
    vendor/yota/yotaphone2/proprietary/etc/firmware/Signedrompatch_v30.bin:system/etc/firmware/Signedrompatch_v30.bin \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a330_pfp.fw:system/etc/firmware/a330_pfp.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/a330_pm4.fw:system/etc/firmware/a330_pm4.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    vendor/yota/yotaphone2/proprietary/etc/firmware/nfc_test.bin:system/etc/firmware/nfc_test.bin \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.b00:system/etc/firmware/venus.b00 \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.b01:system/etc/firmware/venus.b01 \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.b02:system/etc/firmware/venus.b02 \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.b03:system/etc/firmware/venus.b03 \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.b04:system/etc/firmware/venus.b04 \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.mbn:system/etc/firmware/venus.mbn \
    vendor/yota/yotaphone2/proprietary/etc/firmware/venus.mdt:system/etc/firmware/venus.mdt \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_Bluetooth_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Bluetooth_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_General_cal.acdb:system/etc/acdbdata/Fluid/Fluid_General_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_Global_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Global_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_Handset_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Handset_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_Hdmi_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Hdmi_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_Headset_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Headset_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Fluid/Fluid_Speaker_cal.acdb:system/etc/acdbdata/Fluid/Fluid_Speaker_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_Bluetooth_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Bluetooth_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_General_cal.acdb:system/etc/acdbdata/Liquid/Liquid_General_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_Global_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Global_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_Handset_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Handset_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_Hdmi_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Hdmi_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_Headset_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Headset_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/Liquid/Liquid_Speaker_cal.acdb:system/etc/acdbdata/Liquid/Liquid_Speaker_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
    vendor/yota/yotaphone2/proprietary/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    vendor/yota/yotaphone2/proprietary/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    vendor/yota/yotaphone2/proprietary/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    vendor/yota/yotaphone2/proprietary/bin/time_daemon:system/bin/time_daemon \
    vendor/yota/yotaphone2/proprietary/vendor/app/ims/ims.apk:system/vendor/app/ims/ims.apk \
    vendor/yota/yotaphone2/proprietary/vendor/app/ims/lib/arm/libimscamera_jni.so:system/vendor/app/ims/lib/arm/libimscamera_jni.so \
    vendor/yota/yotaphone2/proprietary/vendor/app/ims/lib/arm/libimsmedia_jni.so:system/vendor/app/ims/lib/arm/libimsmedia_jni.so \
    vendor/yota/yotaphone2/proprietary/vendor/bin/slim_daemon:system/vendor/bin/slim_daemon \
    vendor/yota/yotaphone2/proprietary/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    vendor/yota/yotaphone2/proprietary/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/egl/eglsubAndroid.so:system/vendor/lib/egl/eglsubAndroid.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/egl/libEGL_adreno.so:system/vendor/lib/egl/libEGL_adreno.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/egl/libGLESv1_CM_adreno.so:system/vendor/lib/egl/libGLESv1_CM_adreno.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/egl/libGLESv2_adreno.so:system/vendor/lib/egl/libGLESv2_adreno.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/egl/libq3dtools_adreno.so:system/vendor/lib/egl/libq3dtools_adreno.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/hw/activity_recognition.msm8974.so:system/vendor/lib/hw/activity_recognition.msm8974.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/hw/flp.default.so:system/vendor/lib/hw/flp.default.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/hw/power.qcom.so:system/vendor/lib/hw/power.qcom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/hw/sensors.msm8974.so:system/vendor/lib/hw/sensors.msm8974.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-dplmedia.so:system/vendor/lib/lib-dplmedia.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-ims-rcscmjni.so:system/vendor/lib/lib-ims-rcscmjni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsSDP.so:system/vendor/lib/lib-imsSDP.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imscamera.so:system/vendor/lib/lib-imscamera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsdpl.so:system/vendor/lib/lib-imsdpl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsqimf.so:system/vendor/lib/lib-imsqimf.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsrcs.so:system/vendor/lib/lib-imsrcs.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsrcscm.so:system/vendor/lib/lib-imsrcscm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsrcscmclient.so:system/vendor/lib/lib-imsrcscmclient.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsrcscmservice.so:system/vendor/lib/lib-imsrcscmservice.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imss.so:system/vendor/lib/lib-imss.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsvt.so:system/vendor/lib/lib-imsvt.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-imsxml.so:system/vendor/lib/lib-imsxml.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-rcsimssjni.so:system/vendor/lib/lib-rcsimssjni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-rcsjni.so:system/vendor/lib/lib-rcsjni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-rtpcommon.so:system/vendor/lib/lib-rtpcommon.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-rtpcore.so:system/vendor/lib/lib-rtpcore.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-rtpdaemoninterface.so:system/vendor/lib/lib-rtpdaemoninterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/lib-rtpsl.so:system/vendor/lib/lib-rtpsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libC2D2.so:system/vendor/lib/libC2D2.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libCB.so:system/vendor/lib/libCB.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libCommandSvc.so:system/vendor/lib/libCommandSvc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libDivxDrm.so:system/vendor/lib/libDivxDrm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libExtendedExtractor.so:system/vendor/lib/libExtendedExtractor.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libFileMux.so:system/vendor/lib/libFileMux.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libHevcSwDecoder.so:system/vendor/lib/libHevcSwDecoder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libI420colorconvert.so:system/vendor/lib/libI420colorconvert.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libNimsWrap.so:system/vendor/lib/libNimsWrap.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOmxAacDec.so:system/vendor/lib/libOmxAacDec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOmxAmrwbplusDec.so:system/vendor/lib/libOmxAmrwbplusDec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOmxEvrcDec.so:system/vendor/lib/libOmxEvrcDec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOmxMux.so:system/vendor/lib/libOmxMux.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOmxQcelp13Dec.so:system/vendor/lib/libOmxQcelp13Dec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOmxWmaDec.so:system/vendor/lib/libOmxWmaDec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libOpenCL.so:system/vendor/lib/libOpenCL.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libQSEEComAPI.so:system/vendor/lib/libQSEEComAPI.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libRSDriver_adreno.so:system/vendor/lib/libRSDriver_adreno.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libSHIMDivxDrm.so:system/vendor/lib/libSHIMDivxDrm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libSubSystemShutdown.so:system/vendor/lib/libSubSystemShutdown.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libTimeService.so:system/vendor/lib/libTimeService.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libVenusMbiConv.so:system/vendor/lib/libVenusMbiConv.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libacdbmapper.so:system/vendor/lib/libacdbmapper.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ak7345.so:system/vendor/lib/libactuator_ak7345.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ak7345_camcorder.so:system/vendor/lib/libactuator_ak7345_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ak7345_camera.so:system/vendor/lib/libactuator_ak7345_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_dw9714.so:system/vendor/lib/libactuator_dw9714.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_dw9714_camcorder.so:system/vendor/lib/libactuator_dw9714_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_dw9714_camera.so:system/vendor/lib/libactuator_dw9714_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_dw9716.so:system/vendor/lib/libactuator_dw9716.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_dw9716_camcorder.so:system/vendor/lib/libactuator_dw9716_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_dw9716_camera.so:system/vendor/lib/libactuator_dw9716_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_iu074.so:system/vendor/lib/libactuator_iu074.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_iu074_camcorder.so:system/vendor/lib/libactuator_iu074_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_iu074_camera.so:system/vendor/lib/libactuator_iu074_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ov12830.so:system/vendor/lib/libactuator_ov12830.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ov12830_camcorder.so:system/vendor/lib/libactuator_ov12830_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ov12830_camera.so:system/vendor/lib/libactuator_ov12830_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ov8825.so:system/vendor/lib/libactuator_ov8825.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ov8825_camcorder.so:system/vendor/lib/libactuator_ov8825_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_ov8825_camera.so:system/vendor/lib/libactuator_ov8825_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_rohm_bu64243gwz.so:system/vendor/lib/libactuator_rohm_bu64243gwz.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_rohm_bu64243gwz_camcorder.so:system/vendor/lib/libactuator_rohm_bu64243gwz_camcorder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libactuator_rohm_bu64243gwz_camera.so:system/vendor/lib/libactuator_rohm_bu64243gwz_camera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libadreno_utils.so:system/vendor/lib/libadreno_utils.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libadsprpc.so:system/vendor/lib/libadsprpc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libalarmservice_jni.so:system/vendor/lib/libalarmservice_jni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libaudioalsa.so:system/vendor/lib/libaudioalsa.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libbccQTI.so:system/vendor/lib/libbccQTI.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libbtnv.so:system/vendor/lib/libbtnv.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libc2d30-a3xx.so:system/vendor/lib/libc2d30-a3xx.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libc2d30-a4xx.so:system/vendor/lib/libc2d30-a4xx.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAA_ST_gc0339_common.so:system/vendor/lib/libchromatix_SKUAA_ST_gc0339_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAA_ST_gc0339_default_video.so:system/vendor/lib/libchromatix_SKUAA_ST_gc0339_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAA_ST_gc0339_preview.so:system/vendor/lib/libchromatix_SKUAA_ST_gc0339_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_common.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_default_video.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_hfr_120fps.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_hfr_120fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_hfr_60fps.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_hfr_60fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_hfr_90fps.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_hfr_90fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_liveshot.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_preview.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_snapshot.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_video_hd.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_zsl.so:system/vendor/lib/libchromatix_SKUAB_ST_s5k4e1_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx132_common.so:system/vendor/lib/libchromatix_imx132_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx132_default_video.so:system/vendor/lib/libchromatix_imx132_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx132_liveshot.so:system/vendor/lib/libchromatix_imx132_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx132_preview.so:system/vendor/lib/libchromatix_imx132_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx132_snapshot.so:system/vendor/lib/libchromatix_imx132_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx134_common.so:system/vendor/lib/libchromatix_imx134_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx134_default_video.so:system/vendor/lib/libchromatix_imx134_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx134_hfr_120.so:system/vendor/lib/libchromatix_imx134_hfr_120.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx134_hfr_60.so:system/vendor/lib/libchromatix_imx134_hfr_60.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx134_preview.so:system/vendor/lib/libchromatix_imx134_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx134_snapshot.so:system/vendor/lib/libchromatix_imx134_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_common.so:system/vendor/lib/libchromatix_imx135_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_default_video.so:system/vendor/lib/libchromatix_imx135_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_hfr_120.so:system/vendor/lib/libchromatix_imx135_hfr_120.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_hfr_60.so:system/vendor/lib/libchromatix_imx135_hfr_60.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_hfr_90.so:system/vendor/lib/libchromatix_imx135_hfr_90.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_preview.so:system/vendor/lib/libchromatix_imx135_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_snapshot.so:system/vendor/lib/libchromatix_imx135_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx135_video_hd.so:system/vendor/lib/libchromatix_imx135_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx175_common.so:system/vendor/lib/libchromatix_imx175_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx175_default_video.so:system/vendor/lib/libchromatix_imx175_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx175_hfr_120.so:system/vendor/lib/libchromatix_imx175_hfr_120.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx175_preview.so:system/vendor/lib/libchromatix_imx175_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx175_snapshot.so:system/vendor/lib/libchromatix_imx175_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_imx175_video_hd.so:system/vendor/lib/libchromatix_imx175_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov2720_common.so:system/vendor/lib/libchromatix_ov2720_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov2720_default_video.so:system/vendor/lib/libchromatix_ov2720_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov2720_hfr.so:system/vendor/lib/libchromatix_ov2720_hfr.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov2720_liveshot.so:system/vendor/lib/libchromatix_ov2720_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov2720_preview.so:system/vendor/lib/libchromatix_ov2720_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov2720_zsl.so:system/vendor/lib/libchromatix_ov2720_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov5648_oty5f03_common.so:system/vendor/lib/libchromatix_ov5648_oty5f03_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov5648_oty5f03_default_video.so:system/vendor/lib/libchromatix_ov5648_oty5f03_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov5648_oty5f03_preview.so:system/vendor/lib/libchromatix_ov5648_oty5f03_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov5648_oty5f03_snapshot.so:system/vendor/lib/libchromatix_ov5648_oty5f03_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov5648_oty5f03_zsl.so:system/vendor/lib/libchromatix_ov5648_oty5f03_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_common.so:system/vendor/lib/libchromatix_ov8825_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_default_video.so:system/vendor/lib/libchromatix_ov8825_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_hfr_120fps.so:system/vendor/lib/libchromatix_ov8825_hfr_120fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_hfr_60fps.so:system/vendor/lib/libchromatix_ov8825_hfr_60fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_hfr_90fps.so:system/vendor/lib/libchromatix_ov8825_hfr_90fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_liveshot.so:system/vendor/lib/libchromatix_ov8825_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_liveshot_hd.so:system/vendor/lib/libchromatix_ov8825_liveshot_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_preview.so:system/vendor/lib/libchromatix_ov8825_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_preview_hd.so:system/vendor/lib/libchromatix_ov8825_preview_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_snapshot.so:system/vendor/lib/libchromatix_ov8825_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_snapshot_hd.so:system/vendor/lib/libchromatix_ov8825_snapshot_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_video_hd.so:system/vendor/lib/libchromatix_ov8825_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8825_zsl.so:system/vendor/lib/libchromatix_ov8825_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_common.so:system/vendor/lib/libchromatix_ov8865_q8v18a_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_default_video.so:system/vendor/lib/libchromatix_ov8865_q8v18a_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_hfr_120fps.so:system/vendor/lib/libchromatix_ov8865_q8v18a_hfr_120fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_hfr_60fps.so:system/vendor/lib/libchromatix_ov8865_q8v18a_hfr_60fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_hfr_90fps.so:system/vendor/lib/libchromatix_ov8865_q8v18a_hfr_90fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_liveshot.so:system/vendor/lib/libchromatix_ov8865_q8v18a_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_preview.so:system/vendor/lib/libchromatix_ov8865_q8v18a_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_snapshot.so:system/vendor/lib/libchromatix_ov8865_q8v18a_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_video_hd.so:system/vendor/lib/libchromatix_ov8865_q8v18a_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov8865_q8v18a_zsl.so:system/vendor/lib/libchromatix_ov8865_q8v18a_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov9724_common.so:system/vendor/lib/libchromatix_ov9724_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov9724_default_video.so:system/vendor/lib/libchromatix_ov9724_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov9724_liveshot.so:system/vendor/lib/libchromatix_ov9724_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_ov9724_preview.so:system/vendor/lib/libchromatix_ov9724_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_common.so:system/vendor/lib/libchromatix_s5k3l1yx_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_default_video.so:system/vendor/lib/libchromatix_s5k3l1yx_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_hfr_120fps.so:system/vendor/lib/libchromatix_s5k3l1yx_hfr_120fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_hfr_60fps.so:system/vendor/lib/libchromatix_s5k3l1yx_hfr_60fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_hfr_90fps.so:system/vendor/lib/libchromatix_s5k3l1yx_hfr_90fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_liveshot.so:system/vendor/lib/libchromatix_s5k3l1yx_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_preview.so:system/vendor/lib/libchromatix_s5k3l1yx_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_snapshot.so:system/vendor/lib/libchromatix_s5k3l1yx_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_video_hd.so:system/vendor/lib/libchromatix_s5k3l1yx_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_s5k3l1yx_zsl.so:system/vendor/lib/libchromatix_s5k3l1yx_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuab_shinetech_gc0339_common.so:system/vendor/lib/libchromatix_skuab_shinetech_gc0339_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuab_shinetech_gc0339_default_video.so:system/vendor/lib/libchromatix_skuab_shinetech_gc0339_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuab_shinetech_gc0339_liveshot.so:system/vendor/lib/libchromatix_skuab_shinetech_gc0339_liveshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuab_shinetech_gc0339_preview.so:system/vendor/lib/libchromatix_skuab_shinetech_gc0339_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuab_shinetech_gc0339_snapshot.so:system/vendor/lib/libchromatix_skuab_shinetech_gc0339_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuab_shinetech_gc0339_zsl.so:system/vendor/lib/libchromatix_skuab_shinetech_gc0339_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_common.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_default_video.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_hfr_120fps.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_hfr_120fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_hfr_60fps.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_hfr_60fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_hfr_90fps.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_hfr_90fps.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_preview.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_snapshot.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_video_hd.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_video_hd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov12830_p12v01c_zsl.so:system/vendor/lib/libchromatix_skuf_ov12830_p12v01c_zsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov5648_p5v23c_common.so:system/vendor/lib/libchromatix_skuf_ov5648_p5v23c_common.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov5648_p5v23c_default_video.so:system/vendor/lib/libchromatix_skuf_ov5648_p5v23c_default_video.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov5648_p5v23c_preview.so:system/vendor/lib/libchromatix_skuf_ov5648_p5v23c_preview.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libchromatix_skuf_ov5648_p5v23c_snapshot.so:system/vendor/lib/libchromatix_skuf_ov5648_p5v23c_snapshot.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libcne.so:system/vendor/lib/libcne.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libcneapiclient.so:system/vendor/lib/libcneapiclient.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libcneconn.so:system/vendor/lib/libcneconn.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libcneqmiutils.so:system/vendor/lib/libcneqmiutils.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libconfigdb.so:system/vendor/lib/libconfigdb.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdiag.so:system/vendor/lib/libdiag.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdisp-aba.so:system/vendor/lib/libdisp-aba.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdpmframework.so:system/vendor/lib/libdpmframework.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdpmnsrm.so:system/vendor/lib/libdpmnsrm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdrmdiag.so:system/vendor/lib/libdrmdiag.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdrmfs.so:system/vendor/lib/libdrmfs.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdrmtime.so:system/vendor/lib/libdrmtime.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdsi_netctrl.so:system/vendor/lib/libdsi_netctrl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdsutils.so:system/vendor/lib/libdsutils.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libfastcvadsp_stub.so:system/vendor/lib/libfastcvadsp_stub.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libfastcvopt.so:system/vendor/lib/libfastcvopt.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libgeofence.so:system/vendor/lib/libgeofence.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libgsl.so:system/vendor/lib/libgsl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libidl.so:system/vendor/lib/libidl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libimscamera_jni.so:system/vendor/lib/libimscamera_jni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libimsmedia_jni.so:system/vendor/lib/libimsmedia_jni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libizat_core.so:system/vendor/lib/libizat_core.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblbs_core.so:system/vendor/lib/liblbs_core.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblisten.so:system/vendor/lib/liblisten.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblistenhardware.so:system/vendor/lib/liblistenhardware.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblistenjni.so:system/vendor/lib/liblistenjni.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblistensoundmodel.so:system/vendor/lib/liblistensoundmodel.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libllvm-qcom.so:system/vendor/lib/libllvm-qcom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libloc_ext.so:system/vendor/lib/libloc_ext.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libloc_xtra.so:system/vendor/lib/libloc_xtra.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblocationservice.so:system/vendor/lib/liblocationservice.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblowi_client.so:system/vendor/lib/liblowi_client.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmm-abl-oem.so:system/vendor/lib/libmm-abl-oem.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmm-abl.so:system/vendor/lib/libmm-abl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmm-color-convertor.so:system/vendor/lib/libmm-color-convertor.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmm-hdcpmgr.so:system/vendor/lib/libmm-hdcpmgr.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmQSM.so:system/vendor/lib/libmmQSM.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_c2d_module.so:system/vendor/lib/libmmcamera2_c2d_module.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_cpp_module.so:system/vendor/lib/libmmcamera2_cpp_module.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_frame_algorithm.so:system/vendor/lib/libmmcamera2_frame_algorithm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_iface_modules.so:system/vendor/lib/libmmcamera2_iface_modules.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_imglib_modules.so:system/vendor/lib/libmmcamera2_imglib_modules.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_is.so:system/vendor/lib/libmmcamera2_is.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_isp_modules.so:system/vendor/lib/libmmcamera2_isp_modules.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_pproc_modules.so:system/vendor/lib/libmmcamera2_pproc_modules.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_sensor_modules.so:system/vendor/lib/libmmcamera2_sensor_modules.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_stats_algorithm.so:system/vendor/lib/libmmcamera2_stats_algorithm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_stats_modules.so:system/vendor/lib/libmmcamera2_stats_modules.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_vpe_module.so:system/vendor/lib/libmmcamera2_vpe_module.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera2_wnr_module.so:system/vendor/lib/libmmcamera2_wnr_module.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_SKUAA_ST_gc0339.so:system/vendor/lib/libmmcamera_SKUAA_ST_gc0339.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_SKUAB_ST_s5k4e1.so:system/vendor/lib/libmmcamera_SKUAB_ST_s5k4e1.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_faceproc.so:system/vendor/lib/libmmcamera_faceproc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_hdr_gb_lib.so:system/vendor/lib/libmmcamera_hdr_gb_lib.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_hdr_lib.so:system/vendor/lib/libmmcamera_hdr_lib.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_hi256.so:system/vendor/lib/libmmcamera_hi256.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_imglib.so:system/vendor/lib/libmmcamera_imglib.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_imx132.so:system/vendor/lib/libmmcamera_imx132.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_imx134.so:system/vendor/lib/libmmcamera_imx134.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_imx135.so:system/vendor/lib/libmmcamera_imx135.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_imx175.so:system/vendor/lib/libmmcamera_imx175.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_mt9m114.so:system/vendor/lib/libmmcamera_mt9m114.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_ofilm_oty5f03_eeprom.so:system/vendor/lib/libmmcamera_ofilm_oty5f03_eeprom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_ov2720.so:system/vendor/lib/libmmcamera_ov2720.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_ov5648_oty5f03.so:system/vendor/lib/libmmcamera_ov5648_oty5f03.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_ov8825.so:system/vendor/lib/libmmcamera_ov8825.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_ov8865_q8v18a.so:system/vendor/lib/libmmcamera_ov8865_q8v18a.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_ov9724.so:system/vendor/lib/libmmcamera_ov9724.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_rohm_brca016gwz_eeprom.so:system/vendor/lib/libmmcamera_rohm_brca016gwz_eeprom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_s5k3l1yx.so:system/vendor/lib/libmmcamera_s5k3l1yx.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_skuab_shinetech_gc0339.so:system/vendor/lib/libmmcamera_skuab_shinetech_gc0339.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_skuf_ov12830_p12v01c.so:system/vendor/lib/libmmcamera_skuf_ov12830_p12v01c.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_skuf_ov5648_p5v23c.so:system/vendor/lib/libmmcamera_skuf_ov5648_p5v23c.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_sp1628.so:system/vendor/lib/libmmcamera_sp1628.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_sunny_p12v01m_eeprom.so:system/vendor/lib/libmmcamera_sunny_p12v01m_eeprom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_sunny_p5v23c_eeprom.so:system/vendor/lib/libmmcamera_sunny_p5v23c_eeprom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_sunny_q8v18a_eeprom.so:system/vendor/lib/libmmcamera_sunny_q8v18a_eeprom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_tintless_algo.so:system/vendor/lib/libmmcamera_tintless_algo.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_tintless_bg_pca_algo.so:system/vendor/lib/libmmcamera_tintless_bg_pca_algo.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_truly_cm7700_eeprom.so:system/vendor/lib/libmmcamera_truly_cm7700_eeprom.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_tuning.so:system/vendor/lib/libmmcamera_tuning.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmcamera_wavelet_lib.so:system/vendor/lib/libmmcamera_wavelet_lib.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmhttpstack.so:system/vendor/lib/libmmhttpstack.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmiipstreammmihttp.so:system/vendor/lib/libmmiipstreammmihttp.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmipl.so:system/vendor/lib/libmmipl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmipstreamaal.so:system/vendor/lib/libmmipstreamaal.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmipstreamnetwork.so:system/vendor/lib/libmmipstreamnetwork.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmipstreamsourcehttp.so:system/vendor/lib/libmmipstreamsourcehttp.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmipstreamutils.so:system/vendor/lib/libmmipstreamutils.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmosal.so:system/vendor/lib/libmmosal.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmparser.so:system/vendor/lib/libmmparser.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmrtpdecoder.so:system/vendor/lib/libmmrtpdecoder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmrtpencoder.so:system/vendor/lib/libmmrtpencoder.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmwfdinterface.so:system/vendor/lib/libmmwfdinterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmwfdsinkinterface.so:system/vendor/lib/libmmwfdsinkinterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libmmwfdsrcinterface.so:system/vendor/lib/libmmwfdsrcinterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libnetmgr.so:system/vendor/lib/libnetmgr.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liboemcamera.so:system/vendor/lib/liboemcamera.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libperipheral_client.so:system/vendor/lib/libperipheral_client.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libprofiler_msmadc.so:system/vendor/lib/libprofiler_msmadc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqcci_legacy.so:system/vendor/lib/libqcci_legacy.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqdi.so:system/vendor/lib/libqdi.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqdp.so:system/vendor/lib/libqdp.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi.so:system/vendor/lib/libqmi.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi_cci.so:system/vendor/lib/libqmi_cci.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi_client_helper.so:system/vendor/lib/libqmi_client_helper.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi_client_qmux.so:system/vendor/lib/libqmi_client_qmux.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi_common_so.so:system/vendor/lib/libqmi_common_so.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi_csi.so:system/vendor/lib/libqmi_csi.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmi_encdec.so:system/vendor/lib/libqmi_encdec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqmiservices.so:system/vendor/lib/libqmiservices.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqomx_jpegdec.so:system/vendor/lib/libqomx_jpegdec.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqti-perfd-client.so:system/vendor/lib/libqti-perfd-client.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libquipc_os_api.so:system/vendor/lib/libquipc_os_api.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libril-qc-qmi-1.so:system/vendor/lib/libril-qc-qmi-1.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libril-qcril-hook-oem.so:system/vendor/lib/libril-qcril-hook-oem.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/librpmb.so:system/vendor/lib/librpmb.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/librs_adreno.so:system/vendor/lib/librs_adreno.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/librs_adreno_sha1.so:system/vendor/lib/librs_adreno_sha1.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsc-a2xx.so:system/vendor/lib/libsc-a2xx.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsc-a3xx.so:system/vendor/lib/libsc-a3xx.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libscale.so:system/vendor/lib/libscale.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libscve.so:system/vendor/lib/libscve.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libscve_stub.so:system/vendor/lib/libscve_stub.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsensor1.so:system/vendor/lib/libsensor1.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsensor_reg.so:system/vendor/lib/libsensor_reg.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsmemlog.so:system/vendor/lib/libsmemlog.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsrsprocessing.so:system/vendor/lib/libsrsprocessing.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libssd.so:system/vendor/lib/libssd.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsubsystem_control.so:system/vendor/lib/libsubsystem_control.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libsystem_health_mon.so:system/vendor/lib/libsystem_health_mon.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libthermalclient.so:system/vendor/lib/libthermalclient.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libthermalioctl.so:system/vendor/lib/libthermalioctl.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libtime_genoff.so:system/vendor/lib/libtime_genoff.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libtzdrmgenprov.so:system/vendor/lib/libtzdrmgenprov.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libulp2.so:system/vendor/lib/libulp2.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libvcel.so:system/vendor/lib/libvcel.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libvendorconn.so:system/vendor/lib/libvendorconn.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdcommonutils.so:system/vendor/lib/libwfdcommonutils.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdhdcpcp.so:system/vendor/lib/libwfdhdcpcp.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdmmsink.so:system/vendor/lib/libwfdmmsink.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdmmsrc.so:system/vendor/lib/libwfdmmsrc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdmmutils.so:system/vendor/lib/libwfdmmutils.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdnative.so:system/vendor/lib/libwfdnative.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdrtsp.so:system/vendor/lib/libwfdrtsp.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfdsm.so:system/vendor/lib/libwfdsm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfduibcinterface.so:system/vendor/lib/libwfduibcinterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfduibcsink.so:system/vendor/lib/libwfduibcsink.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfduibcsinkinterface.so:system/vendor/lib/libwfduibcsinkinterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfduibcsrc.so:system/vendor/lib/libwfduibcsrc.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwfduibcsrcinterface.so:system/vendor/lib/libwfduibcsrcinterface.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwqe.so:system/vendor/lib/libwqe.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libxml.so:system/vendor/lib/libxml.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libxt_native.so:system/vendor/lib/libxt_native.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libxtadapter.so:system/vendor/lib/libxtadapter.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libxtwifi_ulp_adaptor.so:system/vendor/lib/libxtwifi_ulp_adaptor.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/mediadrm/libdrmclearkeyplugin.so:system/vendor/lib/mediadrm/libdrmclearkeyplugin.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/mediadrm/libwvdrmengine.so:system/vendor/lib/mediadrm/libwvdrmengine.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/qcdrm/playready/lib/drm/libdrmprplugin_customer.so:system/vendor/lib/qcdrm/playready/lib/drm/libdrmprplugin_customer.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/qcdrm/playready/lib/libprdrmdecrypt_customer.so:system/vendor/lib/qcdrm/playready/lib/libprdrmdecrypt_customer.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/qcdrm/playready/lib/libtzplayready_customer.so:system/vendor/lib/qcdrm/playready/lib/libtzplayready_customer.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so \
    vendor/yota/yotaphone2/proprietary/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    vendor/yota/yotaphone2/proprietary/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd \
    vendor/yota/yotaphone2/proprietary/lib/librmnetctl.so:system/lib/librmnetctl.so \
    vendor/yota/yotaphone2/proprietary/framework/dpmapi.jar:system/framework/dpmapi.jar \
    vendor/yota/yotaphone2/proprietary/framework/com.qti.dpmframework.jar:system/framework/com.qti.dpmframework.jar \
    vendor/yota/yotaphone2/proprietary/framework/cneapiclient.jar:system/framework/cneapiclient.jar \
    vendor/yota/yotaphone2/proprietary/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar \
    vendor/yota/yotaphone2/proprietary/framework/ConnectivityExt.jar:system/framework/ConnectivityExt.jar \
    vendor/yota/yotaphone2/proprietary/framework/qcnvitems.jar:system/framework/qcnvitems.jar \
    vendor/yota/yotaphone2/proprietary/framework/com.qti.location.sdk.jar:system/framework/com.qti.location.sdk.jar \
    vendor/yota/yotaphone2/proprietary/framework/com.quicinc.cne.jar:system/framework/com.quicinc.cne.jar \
    vendor/yota/yotaphone2/proprietary/framework/qti-telephony-common.jar:system/framework/qti-telephony-common.jar \
    vendor/yota/yotaphone2/proprietary/framework/qcrilhook.jar:system/framework/qcrilhook.jar \
    vendor/yota/yotaphone2/proprietary/etc/permissions/com.qti.location.sdk.xml:system/etc/permissions/com.qti.location.sdk.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/cneapiclient.xml:system/etc/permissions/cneapiclient.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/qcnvitems.xml:system/etc/permissions/qcnvitems.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/com.qti.dpmframework.xml:system/etc/permissions/com.qti.dpmframework.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/ConnectivityExt.xml:system/etc/permissions/ConnectivityExt.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/qcrilhook.xml:system/etc/permissions/qcrilhook.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/com.quicinc.cne.xml:system/etc/permissions/com.quicinc.cne.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/dpmapi.xml:system/etc/permissions/dpmapi.xml \
    vendor/yota/yotaphone2/proprietary/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/yota/yotaphone2/proprietary/etc/cne/andsfCne.xml:system/etc/cne/andsfCne.xml \
    vendor/yota/yotaphone2/proprietary/etc/cne/SwimConfig.xml:system/etc/cne/SwimConfig.xml \
    vendor/yota/yotaphone2/proprietary/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    vendor/yota/yotaphone2/proprietary/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    vendor/yota/yotaphone2/proprietary/etc/dpm/nsrm/NsrmConfiguration.xml:system/etc/dpm/nsrm/NsrmConfiguration.xml \
    vendor/yota/yotaphone2/proprietary/etc/dpm/dpm.conf:system/etc/dpm/dpm.conf \
    vendor/yota/yotaphone2/proprietary/app/TimeService/TimeService.apk:system/app/TimeService/TimeService.apk \
    vendor/yota/yotaphone2/proprietary/app/shutdownlistener/shutdownlistener.apk:system/app/shutdownlistener/shutdownlistener.apk \
    vendor/yota/yotaphone2/proprietary/bin/loc_launcher:system/bin/loc_launcher \
    vendor/yota/yotaphone2/proprietary/bin/dpmd:system/bin/dpmd \
    vendor/yota/yotaphone2/proprietary/bin/cnd:system/bin/cnd \
    vendor/yota/yotaphone2/proprietary/priv-app/dpmserviceapp/dpmserviceapp.apk:system/priv-app/dpmserviceapp/dpmserviceapp.apk \
    vendor/yota/yotaphone2/proprietary/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk:system/priv-app/qcrilmsgtunnel/qcrilmsgtunnel.apk \
    vendor/yota/yotaphone2/proprietary/priv-app/QtiTetherService/QtiTetherService.apk:system/priv-app/QtiTetherService/QtiTetherService.apk \
    vendor/yota/yotaphone2/proprietary/priv-app/CNEService/CNEService.apk:system/priv-app/CNEService/CNEService.apk \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libflp.so:system/vendor/lib/libflp.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libQtiTether.so:system/vendor/lib/libQtiTether.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblqe.so:system/vendor/lib/liblqe.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libdataitems.so:system/vendor/lib/libdataitems.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/liblocationservice_glue.so:system/vendor/lib/liblocationservice_glue.so \
    vendor/yota/yotaphone2/proprietary/vendor/lib/libslimclient.so:system/vendor/lib/libslimclient.so
PRODUCT_COPY_FILES += \
	device/yota/yotaphone2/audio/audio_effects.conf:system/etc/audio_effects.conf \
	device/yota/yotaphone2/audio/audio_policy.conf:system/etc/audio_policy.conf \
	device/yota/yotaphone2/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
	device/yota/yotaphone2/audio/mixer_paths_auxpcm.xml:system/etc/mixer_paths_auxpcm.xml
#	device/yota/yotaphone2/rootdir/twrp.fstab:twrp.fstab \
#	$(LOCAL_PATH)/rootdir/twrp.fstab:recovery/root/etc/twrp.fstab \
#	$(LOCAL_PATH)/rootdir/twrp.fstab:twrp.fstab
	
$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)

