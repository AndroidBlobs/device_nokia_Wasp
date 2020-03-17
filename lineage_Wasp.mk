# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Wasp device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := nokia
PRODUCT_DEVICE := Wasp
PRODUCT_MANUFACTURER := nokia
PRODUCT_NAME := lineage_Wasp
PRODUCT_MODEL := Nokia 2.2

PRODUCT_GMS_CLIENTID_BASE := android-nokia
TARGET_VENDOR := nokia
TARGET_VENDOR_PRODUCT_NAME := Wasp
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_wasp-user 10 QP1A.190711.020 1645 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nokia/Wasp_00WW/WSP_sprout:10/QP1A.190711.020/00WW_2_300:user/release-keys
