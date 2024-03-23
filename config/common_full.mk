# Inherit common stuff
$(call inherit-product, vendor/aosp/config/common_mobile.mk)

PRODUCT_SIZE := full

TARGET_BUILD_APERTURE ?= true
ifneq ($(TARGET_BUILD_APERTURE),true)
PRODUCT_PACKAGES += \
    Aperture
endif

ifneq ($(TARGET_EXCLUDES_AUDIOFX),true)
PRODUCT_PACKAGES += \
    AudioFX
endif

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd
