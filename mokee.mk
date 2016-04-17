## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := M2 Mini

# Inherit some common CM stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/meizu/meilan2/device_meilan2.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := meilan2
PRODUCT_NAME := mk_meilan2
PRODUCT_BRAND := Meizu
PRODUCT_MODEL := M2 Mini
PRODUCT_MANUFACTURER := Meizu
