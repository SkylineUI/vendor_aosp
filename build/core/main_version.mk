# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# SkylineUI Platform Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.custom.build.date=$(BUILD_DATE) \
    ro.custom.device=$(CUSTOM_BUILD) \
    ro.custom.fingerprint=$(ROM_FINGERPRINT) \
    ro.custom.version=$(CUSTOM_VERSION) \
    ro.modversion=$(CUSTOM_VERSION) \
    org.skylineui.version.display=$(CUSTOM_VERSION) \
    org.skylineui.build_type=$(CUSTOM_BUILD_TYPE) \
    org.skylineui.build_version=$(SKYLINEUI_BUILD_VERSION) \
    ro.skylineui.maintainer=$(SKYLINEUI_MAINTAINER)
