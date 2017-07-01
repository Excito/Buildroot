################################################################################
#
# excito-installer
#
################################################################################

EXCITO_INSTALLER_VERSION = 917bd0e65c80a4f7a91dfeb63ecd135f779b2acb
EXCITO_INSTALLER_SITE = $(call github,Excito,installer,$(EXCITO_INSTALLER_VERSION))

define EXCITO_INSTALLER_INSTALL_TARGET_CMDS
	$(INSTALL) -d -m 0755 $(TARGET_DIR)/opt/excito
	$(INSTALL) -m 0644 $(@D)/*.py $(TARGET_DIR)/opt/excito
	$(INSTALL) -m 0755 $(@D)/installer $(TARGET_DIR)/opt/excito
endef

$(eval $(generic-package))
