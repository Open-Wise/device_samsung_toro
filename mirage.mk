# Boot animation
TARGET_BOOTANIMATION_NAME := vertical-720x1280

# Inherit device configuration
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/mirage/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/mirage/config/common_nexus.mk)

# Inherit torch settings
$(call inherit-product, vendor/mirage/config/common_ledflash.mk)

PRODUCT_COPY_FILES +=  \
    vendor/mirage/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.res=5MP

# Release name
PRODUCT_RELEASE_NAME := toro

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.2.2/JDQ39/125147:user/release-keys"
PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 125147 release-keys"

PRODUCT_NAME := mirage_toro
PRODUCT_DEVICE := toro
PRODUCT_BRAND := google
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false
