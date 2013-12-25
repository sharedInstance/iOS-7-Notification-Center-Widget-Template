include theos/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = @@PROJECTNAME@@Controller.m
@@PROJECTNAME@@_INSTALL_PATH = /System/Library/WeeAppPlugins
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics
@@PROJECTNAME@@_PRIVATE_FRAMEWORKS = SpringBoardUIServices

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
