ifneq ($(filter OFFICIAL CI,$(CUSTOM_BUILD_TYPE)),)
PRODUCT_PACKAGES += \
    Updater
endif
