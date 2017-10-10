# @Author: Dana Buehre <creaturesurvive>
# @Date:   18-03-2017 12:09:50
# @Email:  dbuehre@me.com
# @Filename: Makefile
# @Last modified by:   creaturesurvive
# @Last modified time: 21-09-2017 2:19:35
# @Copyright: Copyright © 2014-2017 CreatureSurvive


GO_EASY_ON_ME = 1
FINALPACKAGE = 1
DEBUG = 0

ARCHS = armv7 armv7s arm64

TARGET = iphone:clang:10.1:latest

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libCSColorPicker
libCSColorPicker_FILES = $(wildcard *.m) $(wildcard *.mm)
libCSColorPicker_FRAMEWORKS = UIKit CoreGraphics CoreFoundation
libCSColorPicker_PRIVATE_FRAMEWORKS = Preferences
libCSColorPicker_LDFLAGS = -Wl,-segalign,4000
motuumLS_CFLAGS += -fobjc-arc

after-install::
	install.exec "killall -9 Preferences"

include $(THEOS_MAKE_PATH)/library.mk
