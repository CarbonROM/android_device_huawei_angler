# Inherit carbon-specific board config
include device/huawei/angler/BoardConfigCarbon.mk

# Inherit base AOSP device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit APNs list
$(call inherit-product, vendor/carbon/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/carbon/config/common.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 960x640

# Allow tethering without provisioning app
PRODUCT_PROPERTY_OVERRIDES += \
    net.tethering.noprovisioning=true

# SELinux
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Override product naming for Carbon
PRODUCT_NAME := carbon_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P
PRODUCT_MANUFACTURER := HUAWEI
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT="google/angler/angler:6.0.1/MMB29Q/2480792:user/release-keys" \
    PRIVATE_BUILD_DESC="angler-user 6.0.1 MMB29Q 2480792 release-keys" \
    BUILD_ID=MMB29Q
