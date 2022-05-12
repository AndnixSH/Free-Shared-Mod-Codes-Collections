include theos/makefiles/common.mk

BUNDLE_NAME = SpotiHacks
SpotiHacks_FILES = SpotiHacks.mm
SpotiHacks_INSTALL_PATH = /Library/PreferenceBundles
SpotiHacks_FRAMEWORKS = UIKit
SpotiHacks_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/SpotiHacks.plist$(ECHO_END)
