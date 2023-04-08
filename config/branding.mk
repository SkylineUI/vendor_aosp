# Type of Build
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

# SkylineUI Props
SKYLINEUI_BASE_VERSION = STABLE

# SkylineUI Release
ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)

  OFFICIAL_DEVICES = $(shell cat vendor/aosp/skylineui.devices)
  FOUND_DEVICE =  $(filter $(CUSTOM_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(CUSTOM_BUILD))
      CUSTOM_BUILD_TYPE := OFFICIAL
    else
      CUSTOM_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(CUSTOM_BUILD)")
    endif
endif

# Time Related
CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)

# Platform (Android Version)
CUSTOM_PLATFORM_VERSION := 13.0
SKYLINEUI_BUILD_VERSION = 13.0

# Custom Versioning
CUSTOM_VERSION := SkylineUI-$(SKYLINEUI_BASE_VERSION)-$(CUSTOM_PLATFORM_VERSION)-$(CUSTOM_BUILD)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)
CUSTOM_VERSION_PROP := thirteen
