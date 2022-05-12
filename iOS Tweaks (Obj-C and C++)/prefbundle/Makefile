ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = test
test_FILES = Tweak.xm
test_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += prefbundle
include $(THEOS_MAKE_PATH)/aggregate.mk
