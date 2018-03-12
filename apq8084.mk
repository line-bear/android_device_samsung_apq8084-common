#
# Copyright (C) 2017 The LineageOS Project
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

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/vendor/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/vendor/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/vendor/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/vendor/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/vendor/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \

# System properties
	PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.buffer.size.kb=32 \
	audio.offload.gapless.enabled=true
	
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196609
	
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""
	
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true
	
PRODUCT_PACKAGES += \
    AdvancedDisplay
	
# Audio
PRODUCT_PACKAGES += \
	android.hardware.audio@2.0-impl \
	android.hardware.audio.effect@2.0-impl \
	audiod \
	audio_policy.apq8084 \
	audio.a2dp.default \
	audio.primary.apq8084 \
	audio.r_submix.default \
	audio.usb.default \
	libaudio-resampler \
	libqcomvisualizer \
	libqcompostprocbundle \
	libqcomvoiceprocessing \
	libqcomvoiceprocessingdescriptors \
	mixer_paths.xml \
	tinymix
	
# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor

# Camera
PRODUCT_PACKAGES += \
    camera.apq8084 \
    libstlport \
    libxml2

# Display
PRODUCT_PACKAGES += \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.mapper@2.0-impl \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.memtrack@1.0-impl \
	copybit.apq8084 \
	gralloc.apq8084 \
	hwcomposer.apq8084 \
	hdmi_cec.apq8084 \
	memtrack.apq8084
	
# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl
	
# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
	gps.apq8084
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf

# IR Blaster
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    consumerir.apq8084

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl
	
# Lights
PRODUCT_PACKAGES += \
    lights.APQ8084

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml
	
# OMX
PRODUCT_PACKAGES += \
	libc2dcolorconvert \
	libdivxdrmdecrypt \
	libOmxAacEnc \
	libOmxAmrEnc \
	libOmxCore \
	libmm-omxcore \
	libOmxEvrcEnc \
	libOmxQcelp13Enc \
	libOmxVdec \
	libOmxVdecHevc \
	libOmxVdpp \
	libOmxVenc \
	libstagefrighthw

# Power HAL
PRODUCT_PACKAGES += \
	android.hardware.power@1.0-impl \
	power.apq8084

# RenderScript HAL
PRODUCT_PACKAGES += \
	android.hardware.renderscript@1.0-impl
	
# Radio
PRODUCT_PACKAGES += \
    libsecnativefeature

# RMNET
PRODUCT_PACKAGES += \
    librmnetctl

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    sensors.apq8084

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.1-service

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    hostapd \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf
	
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

# Common Qualcomm
$(call inherit-product, device/samsung/qcom-common/qcom-common.mk)
