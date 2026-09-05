TARGET := iphone:clang:14.5:14.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Immortalizer

Immortalizer_FILES = $(wildcard *.m) Tweak.xm
Immortalizer_CFLAGS = -fobjc-arc
Immortalizer_FRAMEWORKS = UIKit Foundation UserNotifications

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += ImmortalizerPrefs
SUBPROJECTS += ImmortalizerCC
include $(THEOS_MAKE_PATH)/aggregate.mk
