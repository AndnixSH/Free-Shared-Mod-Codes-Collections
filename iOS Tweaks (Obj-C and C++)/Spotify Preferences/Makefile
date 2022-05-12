export ARCHS = armv7 arm64
export TARGET = iphone:clang:7.1:7.1

include theos/makefiles/common.mk

TWEAK_NAME = SpotiHacks
SpotiHacks_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk


SUBPROJECTS += spotihacks
include $(THEOS_MAKE_PATH)/aggregate.mk
