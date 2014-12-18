include theos/makefiles/common.mk

BUNDLE_NAME = @@PROJECTNAME@@
@@PROJECTNAME@@_FILES = @@PROJECTNAME@@ViewController.m
@@PROJECTNAME@@_INSTALL_PATH = /Library/WeeLoader/Plugins
@@PROJECTNAME@@_FRAMEWORKS = UIKit CoreGraphics
@@PROJECTNAME@@_PRIVATE_FRAMEWORKS = SpringBoardUIServices

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"
