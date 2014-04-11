ARCHS = armv7 armv7s
TARGET = iphone:7.1:4.3

include theos/makefiles/common.mk

TWEAK_NAME = DisabledBulletin
DisabledBulletin_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += disabledbulletinsettings
include $(THEOS_MAKE_PATH)/aggregate.mk
