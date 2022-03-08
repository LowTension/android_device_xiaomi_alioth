#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.1-impl-mock \
    fastbootd

# Rootdir
PRODUCT_PACKAGES += \
    capture.sh \
    init.class_main.sh \
    init.crda.sh \
    init.mdm.sh \
    init.mi.usb.sh \
    init.qcom.class_core.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.usb.sh \
    init.qti.chg_policy.sh \
    init.qti.dcvs.sh \
    init.qti.media.sh \
    init.qti.qcv.sh \
    mishow.sh \
    playback.sh \
    qca6234-service.sh \
    setup_backmic2headphone.sh \
    setup_headsetmic2headphone.sh \
    setup_mainmic2headphone.sh \
    setup_rcv2mainmic.sh \
    setup_rcv2topmic.sh \
    setup_top-spk2backmic.sh \
    setup_top-spk2mainmic.sh \
    setup_top-spk2topmic.sh \
    setup_topmic2headphone.sh \
    teardown_loopback.sh \
    us_cal.sh \

PRODUCT_PACKAGES += \
    fstab.qcom \
    init.qcom.factory.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.target.wigig.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/alioth/alioth-vendor.mk)
