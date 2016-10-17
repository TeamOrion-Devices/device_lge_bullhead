# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

$(call inherit-product, vendor/orion/config/common.mk)

$(call inherit-product, vendor/orion/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/bullhead/aosp_bullhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := orion_bullhead
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5x
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=bullhead \
    BUILD_FINGERPRINT=google/bullhead/bullhead:6.0.1/MTC20K/3142008:user/release-keys \
    PRIVATE_BUILD_DESC="bullhead-user 6.0.1 MTC20K 3142008 release-keys"
