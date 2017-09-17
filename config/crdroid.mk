# Product version should match Android version
PRODUCT_VERSION_MAJOR = 8
PRODUCT_VERSION_MINOR = 0

# Increase CR Version with each major release.
CR_VERSION := 4.0

LINEAGE_VERSION := crDroidAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(shell date -u +%Y%m%d)-$(LINEAGE_BUILD)-v$(CR_VERSION)
LINEAGE_DISPLAY_VERSION := crDroidAndroid-$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR)-$(LINEAGE_BUILD)-v$(CR_VERSION)

# Do not edit. These values are parsed by OTA and Settings.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crdroid.build.version=$(LINEAGE_VERSION) \
    ro.crdroid.display.version=$(LINEAGE_DISPLAY_VERSION) \
    ro.crdroid.version=$(PRODUCT_VERSION_MAJOR).$(PRODUCT_VERSION_MINOR) \
    ro.modversion=$(CR_VERSION)

# Custom packages
PRODUCT_PACKAGES += \
    crDroidWallpapers \
    crDroidFileManager \
    crDroidMusic \
    crDroidOTA
