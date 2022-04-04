# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from lotus device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := lotus
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_lotus
PRODUCT_MODEL := MI PLAY

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := lotus
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="lotus-user 8.1.0 O11019 V11.0.10.0.OFIMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := xiaomi/lotus/lotus:8.1.0/O11019/V11.0.10.0.OFIMIXM:user/release-keys
