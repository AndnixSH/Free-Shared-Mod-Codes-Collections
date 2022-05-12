include theos/makefiles/common.mk

BUNDLE_NAME = DungeonHunter4Cheats
DungeonHunter4Cheats_FILES = DungeonHunter4Cheats.mm
DungeonHunter4Cheats_INSTALL_PATH = /Library/PreferenceBundles
DungeonHunter4Cheats_FRAMEWORKS = UIKit
DungeonHunter4Cheats_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/DungeonHunter4Cheats.plist$(ECHO_END)
